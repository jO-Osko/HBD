module App exposing (main)

import Html exposing (program)
import State exposing (init, subscriptions, update)
import Types exposing (Model, Msg)
import View exposing (view)


main : Program Never Model Msg
main =
    program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
