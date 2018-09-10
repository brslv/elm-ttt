{--
NOTES

pheww... :)

[x] make the game layout first
  [x] add title
  [x] style the field
  [x] style the boxes
[ ] define the game model
[ ] define the game's update func
--}

module Main exposing (..)

import Browser
import Html exposing (div, text, h1)
import Html.Attributes exposing (class)

-- MAIN

main =
  Browser.sandbox
    { init = init
    , view = view
    , update = update
    }

init = initialState


-- MODEL

initialState =
  [] -- this will represent our field for now...

-- UPDATE

update msg model =
  model -- for now, we're simply going to return the same model on each update...

-- VIEW

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