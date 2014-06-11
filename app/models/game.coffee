`import UserVote from "poker/models/user_vote"`
Game = DS.Model.extend
  name: DS.attr('string')
  users: DS.attr('connections')
  votes: DS.hasMany('vote', async: true)
  showResult: DS.attr('boolean', defaultValue: false)

  userAndVotes: (->
    mapped = @get('votes').map (vote)->
      UserVote.create username: vote.get('username'), vote: vote
    unless Ember.isEmpty @get('users')
      @get('users').forEach (user)->
        mapped.pushObject(UserVote.create username: user) unless mapped.mapBy('username').contains(user)

    mapped.sortBy('username')
  ).property('votes.@each.username', 'users.[]')

  voteValues: [0,'½', 1, 2, 3, 5, 8, 13, 21, 40, 100, '?']

`export default Game`
