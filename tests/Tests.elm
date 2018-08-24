module Tests exposing (..)

import Test exposing (..)
import Expect exposing (equal)
import TestRound exposing (..)
import TestRoundCom exposing (..)
import TestFloor exposing (..)
import TestFloorCom exposing (..)
import TestCeil exposing (..)
import TestCeilCom exposing (..)
import TestDecimal exposing (..)


all : Test
all =
    describe "All"
        [ roundTest
        , roundComTest
        , ceilTest
        , ceilComTest
        , floorTest
        , floorComTest
        , decimalTest
        ]

