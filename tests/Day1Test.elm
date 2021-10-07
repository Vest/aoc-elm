module Day1Test exposing (suite)

import Bitwise exposing (or)
import Day1 exposing (..)
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Day1"
        [ test "Parse single step R1 to Right 1" <|
            \_ ->
                case parseStep "R1" of
                    Right steps ->
                        Expect.equal steps 1

                    _ ->
                        Expect.fail "Unexpected output"
        , test "Parse single step R2 to Right 2" <|
            \_ ->
                case parseStep "R2" of
                    Right steps ->
                        Expect.equal steps 2

                    _ ->
                        Expect.fail "Unexpected output"
        , test "Parse single step L1 to Left 1" <|
            \_ ->
                case parseStep "L1" of
                    Left steps ->
                        Expect.equal steps 1

                    _ ->
                        Expect.fail "Unexpected output"
        , test "Parse single step L2 to Left 2" <|
            \_ ->
                case parseStep "L2" of
                    Left steps ->
                        Expect.equal steps 2

                    _ ->
                        Expect.fail "Unexpected output"
        , test "Parse single input to list" <|
            \_ ->
                parseInput "R1"
                    |> Expect.equalLists [ Right 1 ]
        , test "Parse two steps from input to list" <|
            \_ ->
                parseInput "R1, R2"
                    |> Expect.equalLists [ Right 1, Right 2 ]
        ]
