Array = DS.Transform.extend
  deserialize: (serialized) ->
    if Ember.isEmpty serialized
      []
    else
      Ember.keys(serialized).uniq()

`export default Array`
