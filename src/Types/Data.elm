module Types.Data exposing (Data, initialData)

import Dict exposing (Dict)
import Entity.Core exposing (ID)
import Entity.User exposing (User)


type alias Data =
    { users : Dict ID User
    }


initialData : Data
initialData =
    Data Dict.empty
