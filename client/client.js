//Meteor.users.update({_id: Meteor.user()._id}, {$set : {role: 'player'}});


Meteor.subscribe("role");

//Meteor.users().find({ _id: this.userId },
//    { fields: {role:'Player' } }
//);