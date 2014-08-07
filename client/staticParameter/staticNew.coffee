Template.staticTypeNew.events
  "submit #newstaticParameter":(e)->
    name = $("#qtname").val()
    if currentParameter?
      staticParameter.update({_id:currentParameter},{$set:{name:name}},{ upsert: true })
    else
      staticParameter.insert({name:name})
    window.location = "/static_parameters"
    false

Template.staticTypeNew.rendered = ->
  if currentParameter?
    name = $("#qtname").val(staticParameter.findOne(currentParameter).name)

