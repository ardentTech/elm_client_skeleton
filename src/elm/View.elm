module View exposing (view)

import Html exposing (Html, div, h3, text)

import Message exposing (Msg(..))
import Model exposing (Model)
import Router exposing (Route(..))


view : Model -> Html Msg
view model =
  fromRoute model.currentRoute <| model


-- PRIVATE


fromRoute : Maybe Route -> (Model -> Html Msg)
fromRoute route =
  case route of
    Just Index -> indexView
    _ -> notFoundView


indexView : Model -> Html Msg
indexView model = div [] [ h3 [] [ text "Index" ] ]


notFoundView : Model -> Html Msg
notFoundView model = div [] [ h3 [] [ text "404" ] ]
