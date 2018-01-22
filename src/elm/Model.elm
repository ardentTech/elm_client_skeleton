module Model exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (parsePath)

import Alert exposing (Alert)
import Flag exposing (Flags)
import Message exposing (Msg)
import Router exposing (Route, route)


type alias Model = {
  alert : Maybe ( Alert Msg ),
  apiUrl : String,
  currentRoute : Maybe Route
}


init : Flags -> Location -> Model
init flags location = {
  alert = Nothing,
  apiUrl = flags.apiUrl,
  currentRoute = parsePath route location }
