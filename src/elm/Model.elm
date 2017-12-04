module Model exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (parsePath)

import Flag exposing (Flags)
import Router exposing (Route, route)


type alias Model = {
  apiUrl : String,
  currentRoute : Maybe Route
}


init : Flags -> Location -> Model
init flags location = {
  apiUrl = flags.apiUrl,
  currentRoute = parsePath route location }
