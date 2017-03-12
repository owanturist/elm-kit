module Types.Model exposing (Model, initModel)

import Types.Data exposing (Data, initialData)
import Types.Session exposing (Session, initialSession)
import Types.Route exposing (Route)


type alias Model =
    { data : Data
    , session : Session
    , route : Route
    }


initModel : Route -> Model
initModel route =
    Model initialData initialSession route
