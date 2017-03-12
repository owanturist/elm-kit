module View exposing (view)

import Html exposing (Html, a, div, text)
import Html.Attributes exposing (href)
import Types.Messages exposing (Msg)
import Types.Model exposing (Model)
import Types.Route exposing (Route(..))


view : Model -> Html Msg
view ({ route } as model) =
    case route of
        Homepage ->
            homepageView

        Login ->
            loginView

        NotFound ->
            notFoundView


homepageView : Html Msg
homepageView =
    div []
        [ text "Homepage, "
        , a [ href "#login" ] [ text "go login" ]
        ]


loginView : Html Msg
loginView =
    div []
        [ text "Login, "
        , a [ href "#" ] [ text "go home" ]
        ]


notFoundView : Html Msg
notFoundView =
    div []
        [ text "Not Found :(" ]
