IndexController = Ember.Controller.extend
  gameName: null
  userName: null

  actions:
    newGame: ->
      @user.set('name', @get('userName'))
      @store.createRecord('game', name: @get('gameName')).save().then (game)=>
        game.reload()
        @transitionToRoute 'game', game


`export default IndexController`
