controller = Ember.Controller.extend
  actions:
    newVote: ->
      @store.createRecord('vote', name: 'Jonas Forsberg').save()

`export default controller`
