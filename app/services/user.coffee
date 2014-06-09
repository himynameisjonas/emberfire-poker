user = Ember.Object.extend
  name: null
  game: null

  init: ->
    @set 'name', JSON.parse(localStorage.getItem('name'))
    @setupConnection()

  save: (->
    localStorage.setItem 'name', JSON.stringify(@get 'name')
  ).observes('name')

  setupConnection: (->
    return if Ember.isEmpty(@get 'game') || Ember.isEmpty(@get 'name')
    @get('myConnectionsRef').remove() if @get('myConnectionsRef')

    @set 'myConnectionsRef', new Firebase("https://mnd-vote.firebaseio.com/games/#{@get 'game.id'}/users/#{@get 'name'}")

    @set 'connectedRef', new Firebase('https://mnd-vote.firebaseio.com/.info/connected')
    @get('connectedRef').on 'value', (snap)=>
      if snap.val() == true
        con = @get('myConnectionsRef').push(@get 'name');
        con.onDisconnect().remove()
  ).observes('name', 'game')


`export default user;`
