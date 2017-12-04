module Main exposing (main)

import Navigation exposing (Location, programWithFlags)

import Message exposing (Msg(..))
import Model exposing (Model)
import Update exposing (update)
import View exposing (view)


-- APP
type alias Flags = { apiUrl : String }


init : Flags -> Location -> ( Model, Cmd Msg )
init flags location = (Model.init, Cmd.none)


main : Program Flags Model Msg
main = programWithFlags UrlChange {
    init = init,
    subscriptions = always Sub.none,
    update = update,
    view = view
  }
