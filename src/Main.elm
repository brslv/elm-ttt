{--
NOTES

Next...define what's happening in the update function...

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
import Html.Events exposing (onClick)

-- MAIN

main =
  Browser.sandbox
    { init = init
    , view = view
    , update = update
    }

init = initialState


-- MODEL

type alias Box =
  (Int, Int)

type Player =
  P1 String
  | P2 String
  | None String

type alias Field =
  List (List Player) -- Matrix

type alias Model = 
  { field : Field
  , currentPlayer : Player
  }

p1 : Player
p1 =
  P1 "X"

p2 : Player
p2 =
  P2 "O"

n : Player
n =
  None ""

initialState =
  { field = [ [ n, n, n ]
            , [ n, n, n ]
            , [ n, n, n ]
            ]
  , currentPlayer = p1
  }

-- UPDATE

type Msg =
  Turn Box -- Each player's turn will carry information about the box

update msg model =
  let
    _ =
      Debug.log "msg" msg -- we still don't enter here, because no updates are invoked...
  in
    case msg of
      Turn box ->
        model

-- VIEW

view model =
  div [ class "game-wrapper" ]
      [ h1 [ class "title" ]
         [ text "Tic Tac Toe"
         ]
      , div [ class "field" ]
            [ div [ class "row" ]
                  [ div [ class "box", onClick (Turn (0, 0)) ] []
                  , div [ class "box", onClick (Turn (0, 1)) ] []
                  , div [ class "box", onClick (Turn (0, 2)) ] []
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