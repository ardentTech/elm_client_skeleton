module Api exposing (urlFor)


urlFor : Host -> Endpoint -> String
urlFor host endpoint =
  host ++ "/" ++ <| pathFrom endpoint


-- PRIVATE


type Endpoint = Todo


type alias Host = String


pathFrom : Endpoint -> String
pathFrom endpoint =
  case endpoint of
    Todo -> "todo"
