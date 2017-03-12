module Main exposing (main)

import Html
    exposing
        ( Html
        , program
        , div
        , text
        )


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 0
    , Cmd.none
    )


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


view : Model -> Html Msg
view model =
    div []
        [ text (toString model)
        ]


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
