module Types.Model exposing (Model, initialModel)

import Types.Data exposing (Data, initialData)
import Types.Session exposing (Session, initialSession)


type alias Model =
    ( Data, Session )


initialModel : Model
initialModel =
    ( initialData, initialSession )
