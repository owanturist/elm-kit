module State exposing (init, update, subscriptions)

import Types.Model exposing (Model, initialModel)
import Types.Messages exposing (Msg(..))


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
