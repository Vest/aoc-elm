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
        let
            stepsList =
                String.split ", " input
        in
        stepsList
            |> List.filterMap parseStep


parseStep : String -> Maybe Direction
parseStep =
    \step ->
        let
            stepChar =
                String.left 1 step

            maybeSteps =
                String.dropLeft 1 step
                    |> String.toInt
        in
        case ( stepChar, maybeSteps ) of
            ( "R", Just steps ) ->
                Just (Right steps)

            ( "L", Just steps ) ->
                Just (Left steps)

            _ ->
                Nothing
