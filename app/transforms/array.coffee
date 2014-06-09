Array = DS.Transform.extend
  deserialize: (serialized) ->
    if Ember.isEmpty serialized
      []
    else
      Ember.keys(serialized).uniq()
  serialize: ->
    []

`export default Array`
