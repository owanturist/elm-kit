module Types.Messages exposing (Msg(..))

import Navigation exposing (Location)


type Msg
    = NoOp
    | OnLocationChange Location
