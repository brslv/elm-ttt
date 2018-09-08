{--
NOTES

ok, let's create a git repository for the project...

[x] make the game layout first
  [x] add title
  [x] style the field
  [x] style the boxes
[ ] define the game model
[ ] define the game's update func
--}

module Main exposing (..)

import Html exposing (div, text, h1)
import Html.Attributes exposing (class)

view model =
  div [ class "game-wrapper" ]
      [ h1 [ class "title" ]
         [ text "Tic Tac Toe"
         ]
      , div [ class "field" ]
            [ div [ class "row" ]
                  [ div [ class "box" ] []
                  , div [ class "box" ] []
                  , div [ class "box" ] []
                  ]
            , div [ class "row" ]
                  [ div [ class "box" ] []
                  , div [ class "box" ] []
                  , div [ class "box" ] []
                  ]
            , div [ class "row" ]
                  [ div [ class "box" ] []
                  , div [ class "box" ] []
                  , div [ class "box" ] []
                  ]
            ]
      ]

main =
  view "fake model for now"