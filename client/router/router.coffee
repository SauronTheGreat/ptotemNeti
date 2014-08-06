Router.map ->
  @route "home",
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



