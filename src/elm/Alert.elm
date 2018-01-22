module Alert exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)


type Category =
  Danger | Dark | Info | List | Primary | Secondary | Success | Warning


type alias Alert msg = {
  category : Category,
  body : List ( Html msg )
}


view : Alert msg -> Html msg 
view alert =
  div [ class "alert" ] alert.body
