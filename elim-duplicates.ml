(* Eliminate consecutive duplicates of list elements. *)

let rec compress = function
  | h :: (h' :: _ as t) -> if h = h' then compress t else h :: compress t
  | x -> x
