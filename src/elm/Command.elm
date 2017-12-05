module Command exposing (forMsg)

import Message exposing (Msg(..))


forMsg : Msg -> Cmd Msg
forMsg msg =
  case msg of
    UrlChange location -> Cmd.none
    _ -> Cmd.none
