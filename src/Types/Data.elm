module Types.Data exposing (Data, initialData)

import Dict exposing (Dict)
import Entities.Core exposing (ID)
import Entities.User exposing (User)


type alias Data =
    { users : Dict ID User
    }


initialData : Data
initialData =
    Data Dict.empty
