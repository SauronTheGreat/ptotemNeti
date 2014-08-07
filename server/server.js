Accounts.onCreateUser(function(options, user) {

    user.role = 'Player';
    Meteor.users.findOne({_id: Meteor.user()._id});

    if (options.profile)
        user.profile = options.profile;
    return user;
});