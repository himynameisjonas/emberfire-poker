Router = Ember.Router.extend
  location: PokerENV.locationType

Router.map ->
  @resource 'game', path: 'game/:id', ->

`export default Router`
