Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @resource 'game', path: 'game/:id', ->

`export default Router`
