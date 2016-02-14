import Click exposing (update, view)
import StartApp.Simple exposing (start)

main =
  start
    { model = 100
    , update = update
    , view = view
    }
