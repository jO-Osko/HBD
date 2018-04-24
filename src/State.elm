module State
    exposing
        ( init
        , update
        , subscriptions
        )

import Types exposing (Model(..), Msg(StartGreeting, Back))


init : ( Model, Cmd Msg )
init =
    ( Initial, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Back ->
            init

        StartGreeting ->
            ( Greeting "Vida", Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch []
