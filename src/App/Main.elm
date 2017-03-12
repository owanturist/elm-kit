module Main exposing (main)

import Navigation exposing (Location, program)
import View exposing (view)
import State exposing (init, update, subscriptions)
import Types.Model exposing (Model)
import Types.Messages exposing (Msg(OnLocationChange))


main : Program Never Model Msg
main =
    program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
