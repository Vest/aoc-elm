module Day1 exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


view : String -> Html msg
view model =
    p [] [ text model ]


main : Html msg
main =
    view "test"
