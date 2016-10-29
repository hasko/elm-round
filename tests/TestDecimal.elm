module TestDecimal exposing (decimalTest)

import Test exposing (..)
import Expect exposing (equal)

import TestData exposing (dataFloat)
import Round

data =
  [(1.2345e-18,"0.0000000000000000012345")
  ,(1.2345e-17,"0.000000000000000012345")
  ,(1.2345e-16,"0.00000000000000012345")
  ,(1.2345e16,"12345000000000000")
  ,(1.2345e17,"123450000000000000")
  ,(1.2345e18,"1234500000000000000")
  ,(-1.2345e-18,"-0.0000000000000000012345")
  ,(-1.2345e-17,"-0.000000000000000012345")
  ,(-1.2345e-16,"-0.00000000000000012345")
  ,(-1.2345e16,"-12345000000000000")
  ,(-1.2345e17,"-123450000000000000")
  ,(-1.2345e18,"-1234500000000000000")
  ]

decimalTest : Test
decimalTest =
  describe "scientific"
     ( List.map
        (\(b,a) ->
          test ("toDecimal "++(toString b)++" to "++a)
          <| \() -> equal a (Round.toDecimal b))
        data
     )

