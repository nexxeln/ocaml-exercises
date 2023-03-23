let rec last_two = function
  | [] -> None
  | [ x ] -> None
  | [ x; y ] -> Some(x, y)
  |  _ :: t  -> last_two t
