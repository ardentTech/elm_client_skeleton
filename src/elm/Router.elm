module Router exposing (Route(..), route, toPath)

import UrlParser exposing (Parser, map, oneOf, top)


type Route = Index


route : Parser (Route -> a) a
route = oneOf [
  map Index top]


toPath : Route -> String
toPath r =
  case r of
    Index -> "/"
