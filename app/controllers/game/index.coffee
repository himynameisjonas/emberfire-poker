GameIndexController = Ember.ObjectController.extend
  username: Ember.computed.alias('user.name')
  hasVoted: (->
    @get('model.votes').mapBy('username').contains @get('username')
  ).property('model.votes.@each.username', 'username')
  vote: (->
    @get('model.votes').findBy('username', @get('username'))
  ).property('model.votes.@each.username', 'username')

  actions:
    vote: (value)->
      if @get('hasVoted')
        @set('vote.value', value)
        @get('vote').save()
      else
        vote = @store.createRecord('vote', value: value, username: @user.get('name'))
        @get('model.votes').addObject vote
        vote.save()
        @get('model').save()
    resetVotes: ->
      @set 'model.showResult', false
      @get('model').save()
      votes = @get('model.votes')
      votes.toArray().forEach (vote)->
        vote.destroyRecord()
        votes.removeObject(vote)
      @get('model').save()
    showResult: ->
      @set 'model.showResult', true
      @get('model').save()


`export default GameIndexController;`
