IndexController = Ember.Controller.extend
  gameName: null
  userName: null
  error: false

  actions:
    newGame: ->
      if Ember.isEmpty @get('gameName')
        @set 'error', true
      else
        @set 'error', false
        @user.set('name', @get('userName'))
        @store.createRecord('game', name: @get('gameName')).save().then (game)=>
          game.reload()
          @transitionToRoute 'game', game


`export default IndexController`
