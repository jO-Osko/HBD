module Types
    exposing
        ( Model(..)
        , Msg(StartGreeting, Back)
        )


type Model
    = Initial
    | Greeting String


type Msg
    = Back
    | StartGreeting
