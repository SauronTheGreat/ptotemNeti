Template.landingPage.events({

    'submit #login-form' : function(e, t){
        e.preventDefault();
        // retrieve the input field values
        var email = t.find('#login-email').value
            , password = t.find('#login-password').value;

        // Trim and validate your fields here....

        // If validation passes, supply the appropriate fields to the
        // Meteor.loginWithPassword() function.
        Meteor.loginWithPassword(email, password, function(err){
//            if (err)
//            // The user might not have been found, or their passwword
//            // could be incorrect. Inform the user that their
//            // login attempt has failed.
//            else
            // The user has been logged in.
        });
        return false;
    }
});
if (Meteor.isClient) {
    Meteor.subscribe("userData");
}
Template.landingPage.events({
    'submit #register-form' : function(e, t) {
        e.preventDefault();
        var email = t.find('#account-email').value
            , password = t.find('#account-password').value;

//        Meteor.users.update({_id: user._id}, {$set : {account_type: 'admin'}});

        // Trim and validate the input
//        db.foo.update({"_id" :ObjectId("4e93037bbf6f1dd3a0a9541a") },{$set : {"new_field":1}})

        Accounts.createUser({email: email, password : password, role: "player"}, function(err){
            if (err) {
                // Inform the user that account creation failed
            }
            else {
                var user = Meteor.users.findOne({_id: Meteor.user()._id});
                console.log(user);
//                Meteor.users.update({_id: Meteor.user()._id}, {$set : {role: 'player'}});
//
            }

        });

        return false;
    }
});



//Meteor.users().find({ _id: this.userId },
//    { fields: { the-extra-fields-that-you-want-go-here: 1 } }
//);