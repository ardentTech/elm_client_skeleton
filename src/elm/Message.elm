module Message exposing (Msg(..))

import Navigation exposing (Location)
import Time


type Msg =
  CurrentTime Time.Time |
  NewUrl String |
  NoOp |
  UrlChange Location
