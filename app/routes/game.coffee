GameRoute = Ember.Route.extend
  model: (model)->
    @store.find('game', model.id)
  setupController: (controller, model)->
    @_super(controller, model)
    @user.set('game', model)

`export default GameRoute`
