module Model exposing (..)

import Navigation exposing (Location)
import Time
import UrlParser exposing (parsePath)

import Alert exposing (Alert)
import Flag exposing (Flags)
import Router exposing (Route, route)


type alias Model = {
  alert : Alert,
  apiUrl : String,
  currentRoute : Maybe Route,
  currentTime : Maybe Time.Time
}


init : Flags -> Location -> Model
init flags location = {
  alert = Alert.init,
  apiUrl = flags.apiUrl,
  currentRoute = parsePath route location,
  currentTime = Nothing }
