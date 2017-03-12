module Entity.User exposing (User)

import Entity.Core exposing (Entity)


type alias User =
    Entity
        { firstName : String
        , lastName : String
        }
