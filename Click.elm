module Click where

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

-- MODEL
type alias Model = Int

-- UPDATE
type Action = Increment | Reset

update : Action -> Model -> Model
update action model = case action of
  Increment ->
    model + 1

  Reset -> 
    0

-- VIEW
view : Signal.Address Action -> Model -> Html
view address model = div []
    [ div [ textStyle ] [ text "Clique no numero para incrementar: " ]
    , div [ countStyle 
          , onClick address Increment ] [ text (toString model) ]
    , button [ onClick address Reset ] [ text "Colocar a 0" ]
    ]

countStyle : Attribute
countStyle = style
    [ ("font-size", "20px")
    , ("color", "blue")
    , ("font-family", "monospace")
    , ("display", "inline-block")
    , ("width", "50px")
    , ("text-align", "center")
    ]

textStyle : Attribute
textStyle = style
    [ ("font-size", "20px")
    , ("font-family", "fantasy")
    , ("display", "inline-block")
    , ("text-align", "center")
    ]
