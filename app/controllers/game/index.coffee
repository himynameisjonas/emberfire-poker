GameIndexController = Ember.ObjectController.extend
  username: Ember.computed.alias('user.name')

  actions:
    vote: (value)->
      vote = @store.createRecord('vote', value: value, username: @user.get('name'))
      @get('model.votes').addObject vote
      vote.save()
      @get('model').save()

`export default GameIndexController;`
