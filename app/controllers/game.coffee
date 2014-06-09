GameController = Ember.ObjectController.extend
  username: Ember.computed.alias('user.name')

`export default GameController;`
