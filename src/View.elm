module View exposing (view)

import Html exposing (Html, div, text)
import Types.Model exposing (Model)
import Types.Messages exposing (Msg)


view : Model -> Html Msg
view model =
    div []
        [ text "hello"
        ]
