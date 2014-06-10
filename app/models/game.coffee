`import UserVote from "poker/models/user_vote"`
Game = DS.Model.extend
  name: DS.attr('string')
  users: DS.attr('connections')
  votes: DS.hasMany('vote', async: true)
  showResult: DS.attr('boolean', defaultValue: false)

  userAndVotes: (->
    mapped = @get('votes').map (vote)->
      UserVote.create username: vote.get('username'), vote: vote
    return mapped if Ember.isEmpty @get('users')
    @get('users').forEach (user)->
      mapped.pushObject(UserVote.create username: user) unless mapped.mapBy('username').contains(user)
    mapped
  ).property('votes.@each.username', 'users.[]')

  voteValues: [0,'½', 1, 2, 3, 5, 8, 13, 20, 40, 100, '?']

`export default Game`
