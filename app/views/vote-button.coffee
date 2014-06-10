VoteButtonView = Ember.View.extend
  tagName: 'button'
  classNames: ["btn", "btn-block","btn-primary"]
  classNameBindings: ['active']
  active: (->
    return false if Ember.isEmpty @get('controller.vote.value')
    @get('controller.vote.value').toString() == @get('value').toString()
  ).property('controller.vote.value', 'value')
  didInsertElement: ->
    @$().text(@get 'value')

  click: ->
    @get('controller').send 'vote', @get('value')

`export default VoteButtonView;`
