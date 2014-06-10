Vote = DS.Model.extend
  game: DS.belongsTo('game', async: true)
  username: DS.attr('string')
  value: DS.attr('string')

`export default Vote`
