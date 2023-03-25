(*
Rotate a list N places to the left.

# rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] 3;;
- : string list = ["d"; "e"; "f"; "g"; "h"; "a"; "b"; "c"]
*)

let rec rotate list n =
  if n = 0 then list
  else match list with [] -> [] | h :: t -> rotate (t @ [ h ]) (n - 1)
