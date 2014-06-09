Game = DS.Model.extend
  name: DS.attr('string')
  users: DS.attr('connections')
  votes: DS.hasMany('vote', async: true)

  voteValues: [0, 1, 2, 3, 5, 8, 13]

`export default Game`
