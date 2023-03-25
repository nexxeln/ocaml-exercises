(*
Split a list into two parts; the length of the first part is given.

If the length of the first part is longer than the entire list, then the first part is the list and the second part is empty.
   
# split ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3;;
- : string list * string list =
(["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"])
# split ["a"; "b"; "c"; "d"] 5;;
- : string list * string list = (["a"; "b"; "c"; "d"], [])
*)

let rec split list n =
  match list with
  | [] -> ([], [])
  | h :: t ->
      if n = 0 then ([], list)
      else
        let a, b = split t (n - 1) in
        (h :: a, b)
