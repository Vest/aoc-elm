module Day1 exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type Rotate
    = Right Int
    | Left Int


type Direction
    = North
    | South
    | East
    | West


type alias Position =
    { row : Int, col : Int, dir : Direction }


view : String -> Html msg
view model =
    p [] [ text model ]


main : Html msg
main =
    view "test"


parseInput : String -> List Rotate
parseInput =
    \input ->
        input
            |> String.split ", "
            |> List.filterMap parseStep


parseStep : String -> Maybe Rotate
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
