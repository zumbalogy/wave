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



