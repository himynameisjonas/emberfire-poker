FirebaseSerializer = DS.FirebaseSerializer.extend
  serializeAttribute: (record, json, key, attribute) ->
    @_super(record, json, key, attribute) if (attribute.name != 'users')

`export default FirebaseSerializer`
