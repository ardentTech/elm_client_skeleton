module Message exposing (Msg(..))

import Navigation exposing (Location)


type Msg = NoOp | UrlChange Location
