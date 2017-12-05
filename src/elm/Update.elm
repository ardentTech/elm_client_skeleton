module Update exposing (update)

import UrlParser exposing (parsePath)

import Command
import Message exposing (Msg(..))
import Model exposing (Model)
import Router exposing (route)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp -> ( model, Cmd.none )
    UrlChange location -> (
      { model | currentRoute = parsePath route location }, Command.forMsg msg )
