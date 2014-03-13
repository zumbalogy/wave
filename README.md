http://ejohn.org/projects/javascript-diff-algorithm/

models
    users
        email
        password

    convos

    user_convo joiner
        user ID
        convo ID
        most recent observation of convo by user

    carrier
        user ID
        Convo ID
        parent carrier ID
        timestamp

    message
        user ID
        carrier ID
        timestamp

relations
    users many/many convos
    convos many carriers
    carrairs many messages

    message one user
    message one carrier

    user many messages



mongo?
    {user {convo {carrier {message/usrID}}}}
    or
    {convo {user {carrier {message/usrID}}}}
    or
    {convo [users] {carriers/usrID{messages/usrID}}}




notes
    maybe convo to convoy & message to something  (user to fleet commander)

    name
        convo
        konvo
        convoy
        konvoy
        khanvoi
        tangent
        tree
        talktree
        parry
        talks
        stream
        streamfeed
        river
        fold
        vane
        digress
        wave
        nami (japanese wave)
        Kantai (armadda in japanese)
        Xiàn (thread, chinese)
        Cháo (japanese for nest, but also, hey, lots of stuff)
        chao is now working title
        hmmm no maybe wave?
        



    features
        fold a thread
        real time updates
        update as other usr types
        edit carriers
        edit other users carriers
        guest (url) access
        good design
        have threads


#- show.html.erb

var faye = new Faye.Client("https://wavvefaye.herokuapp.com/faye");
//("https://3a971351.ngrok.com/faye");
//("https://localhost:9292/faye") 
//'<%= ENV["FAYE_VAR"] %>');


give each elem that have the time an attr of real timestamp,
write method that goes over all of those and updates the pretty time
call that method every time you 1)load page, 2) are hit with a new from your subscribtion
3) 20 seconds


