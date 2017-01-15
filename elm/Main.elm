module Main exposing (..)

import Html
    exposing
        ( Html
        , beginnerProgram
        , div
        , ul
        , li
        , button
        , input
        , text
        )
import Html.Attributes
    exposing
        ( type_
        , name
        , checked
        )
import Html.Events exposing (onClick, onCheck)


type alias Model =
    List Cube


type alias Cube =
    { role : Role
    , sides : List Side
    , active : Maybe Side
    }


type Role
    = Result
    | EventResult
    | Event


type Side
    = One
    | Two
    | Three
    | Four
    | Five
    | Six
    | Green
    | Blue
    | Yellow
    | Pirates


model : Model
model =
    [ Cube Result [ One, Two, Three, Four, Five, Six ] Nothing
    , Cube EventResult [ One, Two, Three, Four, Five, Six ] Nothing
    , Cube Event [ Green, Blue, Yellow, Pirates ] Nothing
    ]


main : Program Never Model Msg
main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }


view : Model -> Html Msg
view model =
    div [] (List.map viewCube model)


viewCube : Cube -> Html Msg
viewCube cube =
    ul [] (List.map (viewSide cube) cube.sides)


getRadioName : Role -> String
getRadioName role =
    case role of
        Result ->
            "result"

        EventResult ->
            "event-result"

        Event ->
            "event"


viewSide : Cube -> Side -> Html Msg
viewSide cube side =
    let
        active =
            case cube.active of
                Just activeSide ->
                    activeSide == side

                Nothing ->
                    False
    in
        li []
            <| case side of
                One ->
                    [ text "1"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Two ->
                    [ text "2"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Three ->
                    [ text "3"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Four ->
                    [ text "4"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Five ->
                    [ text "5"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Six ->
                    [ text "6"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Green ->
                    [ text "green"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Blue ->
                    [ text "blue"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Yellow ->
                    [ text "yellow"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]

                Pirates ->
                    [ text "pirates"
                    , input
                        [ type_ "radio"
                        , name <| getRadioName cube.role
                        , checked active
                        , onCheck (Select cube.role side)
                        ]
                        []
                    ]


type Msg
    = Select Role Side Bool


update : Msg -> Model -> Model
update msg model =
    case msg of
        Select role side checked ->
            let
                selectCube cube =
                    if cube.role == role then
                        { cube | active = Just side }
                    else
                        cube
            in
                List.map selectCube model
