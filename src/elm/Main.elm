module Main exposing (main)

import Html exposing (Html, div)
import Navigation exposing (Location, programWithFlags)


-- APP
type alias Flags = { apiUrl : String }


init : Flags -> Location -> ( Model, Cmd Msg )
init flags location = ({}, Cmd.none)


main : Program Flags Model Msg
main = programWithFlags UrlChange {
    init = init,
    subscriptions = always Sub.none,
    update = update,
    view = view
  }


-- MODEL
type alias Model = {}

model : Model
model = {}


-- UPDATE
type Msg = NoOp | UrlChange Location

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp -> ( model, Cmd.none )
    _ -> ( model, Cmd.none )


view : Model -> Html Msg
view model =
  div [] []
