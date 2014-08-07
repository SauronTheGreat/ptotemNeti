Template.StaticParameterIndex.statictypes  =->
  staticParameter.find().fetch()

Template.StaticParameterIndex.events
  'click .remove-parameter-btn':(e)->
    staticParameter.remove({_id:this._id})

