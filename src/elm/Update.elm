module Update exposing (update)

import Navigation exposing (newUrl)
import UrlParser exposing (parsePath)

import Command
import Message exposing (Msg(..))
import Model exposing (Model)
import Router exposing (route)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    CurrentTime time -> ( model, Cmd.none )
    NewUrl url -> ( model, newUrl url )
    NoOp -> ( model, Cmd.none )
    UrlChange location -> (
      { model | currentRoute = parsePath route location }, Command.forMsg msg )
