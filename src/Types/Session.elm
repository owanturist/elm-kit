module Types.Session exposing (Session, initialSession)

import Entity.Core exposing (ID)


type alias Session =
    { user : Maybe ID
    }


initialSession : Session
initialSession =
    Session Nothing
