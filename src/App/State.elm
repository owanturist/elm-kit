module State exposing (init, update, subscriptions, parceLocation)

import Navigation exposing (Location)
import Types.Messages exposing (Msg(..))
import Types.Model exposing (Model, initModel)
import Types.Route exposing (Route(..))
import UrlParser exposing (Parser, map, oneOf, parseHash, s, top)


init : Location -> ( Model, Cmd Msg )
init location =
    ( initModel (parceLocation location), Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        OnLocationChange location ->
            ( { model | route = parceLocation location }
            , Cmd.none
            )


subscriptions : Model -> Sub Msg
subscriptions =
    always Sub.none


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Homepage top
        , map Login (s "login")
        ]


parceLocation : Location -> Route
parceLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFound
