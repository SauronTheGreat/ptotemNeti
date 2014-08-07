Template.questionTypeNew.events
  "submit #newQuestionType":(e)->
    name = $("#qtname").val()
    html = $("#qthtml").val()
    if currentType?
      questionTypes.update({_id:currentType},{$set:{name:name,html:html}},{ upsert: true })
    else
      questionTypes.insert({name:name,html:html})
    window.location = "/question_types"
    false

Template.questionTypeNew.rendered = ->
  console.log this.data
  if this.data.qtid?
    name = $("#qtname").val(questionTypes.findOne(currentType).name)
    html = $("#qthtml").val(questionTypes.findOne(currentType).html)
