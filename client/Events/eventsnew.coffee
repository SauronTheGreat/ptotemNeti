Template.eventsNew.events
  "submit #events":(e)->
    name = $("#ename").val()
#    html = $("#qthtml").val()
    if currentEvents?
      Events.update({_id:currentEvents},{$set:{name:name}},{ upsert: true })
    else
      Events.insert({name:name})
    window.location = "/events"
    false

Template.eventsNew.rendered = ->
  console.log this.data
  if this.data.eid?
    name = $("#ename").val(Events.findOne(currentEvents).name)

