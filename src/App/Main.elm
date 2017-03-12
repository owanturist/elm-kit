module Main exposing (main)

import Html exposing (program)
import View exposing (view)
import State exposing (init, update, subscriptions)
import Types.Model exposing (Model, initialModel)
import Types.Messages exposing (Msg(..))


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
