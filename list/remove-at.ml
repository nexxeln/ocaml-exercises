(*
Remove the K'th element from a list.

The first element of the list is numbered 0, the second 1,...   

# remove_at 1 ["a"; "b"; "c"; "d"];;
- : string list = ["a"; "c"; "d"]
*)

let rec remove_at k = function
  | [] -> []
  | h :: t -> if k = 0 then t else h :: remove_at (k - 1) t
