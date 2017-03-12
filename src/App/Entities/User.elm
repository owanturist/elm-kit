module Entities.User exposing (User)

import Entities.Core exposing (Entity)


type alias User =
    Entity
        { firstName : String
        , lastName : String
        }
