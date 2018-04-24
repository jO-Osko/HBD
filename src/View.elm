module View exposing (view)

import Html exposing (Html, audio, button, div, h1, img, p, text)
import Html.Attributes exposing (attribute, autoplay, class, controls, hidden, id, src, style)
import Html.Events exposing (onClick)
import Types exposing (Model(Greeting, Initial), Msg(Back, StartGreeting))
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Row as Row
import Bootstrap.Grid.Col as Col


view : Model -> Html Msg
view model =
    let
        page =
            case model of
                Initial ->
                    presentView

                Greeting name ->
                    congratulateView name
    in
        Grid.container [ id "main-container", class "h-100 d-flex" ]
            page


presentView : List (Html Msg)
presentView =
    [ Grid.row [ Row.attrs [ class "align-self-center w-100 h-100" ] ]
        [ Grid.col [ Col.sm10, Col.attrs [ class "mx-auto text-center" ] ]
            [ div
                [ class "align-middle" ]
                [ h1 [] [ text "Vse najboljše :)" ]
                , div []
                    [ img [ src "imgs/if_gifts_66104.png", class "align-middle", onClick StartGreeting ] []
                    ]
                , p [] [ text "(Klikni na darilo)" ]
                ]
            ]
        ]
    ]


congratulateView : String -> List (Html Msg)
congratulateView name =
    [ Grid.row [ Row.attrs [ class "align-self-center w-100 h-100" ] ]
        [ Grid.col [ Col.sm10, Col.attrs [ class "mx-auto text-center" ] ]
            [ div
                [ class "align-middle w-100 h-100"
                , style [ ( "position", "relative" ) ]
                ]
                [ div [ class "text-animate" ] [ h1 [] [ text <| "Draga " ++ name ++ " vse najboljše!" ] ]
                , audio [ src "music/hbd.mp3", controls True, autoplay True, hidden True ] []
                ]
            , button [ onClick Back, class "btn btn-secondary" ] [ text "Nazaj" ]
            ]
        ]
    ]
