(*
Replicate the elements of a list a given number of times.

# replicate ["a"; "b"; "c"] 3;;
- : string list = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"]   
*)

let rec replicate list n =
  let rec init n x = if n = 0 then [] else x :: init (n - 1) x in

  match list with [] -> [] | h :: t -> init n h @ replicate t n
