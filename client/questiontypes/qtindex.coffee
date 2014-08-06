Template.questionTypeIndex.questiontypes  =->
  questionTypes.find().fetch()

Template.questionTypeIndex.events
  'click .remove-btn':(e)->
    questionTypes.remove({_id:this._id})
