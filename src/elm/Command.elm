module Command exposing (for)

import Message exposing (Msg(..))


for : Msg -> Cmd Msg
for msg =
  case msg of
    UrlChange location -> Cmd.none
    _ -> Cmd.none
