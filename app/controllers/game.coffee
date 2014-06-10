GameController = Ember.ObjectController.extend
  username: Ember.computed.alias('user.name')
  actions:
    newName: ->
      @set('username', @get('newName'))

`export default GameController;`
