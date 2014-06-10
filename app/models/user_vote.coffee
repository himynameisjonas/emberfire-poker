UserVote = Ember.Object.extend
  username: null
  vote: null
  value: Ember.computed.alias('vote.value')

  hasVoted: (->
    !Ember.isEmpty @get 'vote.value'
  ).property('vote.value')

`export default UserVote`
