Template.EventsIndex.events  =->
  Events.find().fetch()

Template.EventsIndex.events
  'click .remove-event-btn':(e)->
    Events.remove({_id:this._id})
