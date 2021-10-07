module Day1 exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type Direction
    = Right Int
    | Left Int


view : String -> Html msg
view model =
    p [] [ text model ]


main : Html msg
main =
    view "test"


parseInput : String -> List Direction
parseInput =
    \input ->
        [ Right 1 ]
