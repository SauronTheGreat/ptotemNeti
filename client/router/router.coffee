Router.map ->
  @route "landingPage",
    path: "/"

  @route "question_type_index",
    path:"/question_types"
    template:"questionTypeIndex"

  @route "question_type_new",
    path:'/question_type/new'
    template:"questionTypeNew"


  @route "question_type_edit",
    path:'/question_type/edit/:id'
    template:"questionTypeNew"
    data:()->
      {qtid:this.params.id}
    action:()->
      setType(this.data().qtid)
      this.render()


  @route "static_parameter_index",
    path:"/static_parameters"
    template:"StaticParameterIndex"

  @route "static_type_new",
    path:'/statictype/new'
    template:"staticTypeNew"

  @route "static_parameter_edit",
    path:'/static_parameter/edit/:id'
    template:"staticTypeNew"
    data:()->
      {sptid:this.params.id}
    action:()->
      setParameter(this.data().sptid)
      this.render()

  @route "events_index",
     path:"/events"
     template:"EventsIndex"

  @route "events_new",
    path:'/events/new'
    template:"eventsNew"

  @route "events_edit",
    path:'/events/edit/:id'
    template:"eventsNew"
    data:()->
      {eid:this.params.id}
    action:()->
      setEvent(this.data().eid)
      this.render()