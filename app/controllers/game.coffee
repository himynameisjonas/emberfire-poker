GameController = Ember.ObjectController.extend
  username: Ember.computed.alias('user.name')
  showInfo: true
  actions:
    hideInfo: ->
      @set 'showInfo', false
    newName: ->
      @set('username', @get('newName'))

`export default GameController;`
