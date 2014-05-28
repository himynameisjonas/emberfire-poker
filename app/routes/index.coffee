route = Ember.Route.extend
  model: ->
    @store.findAll('vote')

`export default route`
