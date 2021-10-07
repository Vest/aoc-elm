module Day1Test exposing (suite)

import Day1 exposing (..)
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Day1"
        [ test "Parse input to list" <|
            \_ ->
                parseInput "R1"
                    |> Expect.equalLists [ Day1.Right 1 ]
        ]
