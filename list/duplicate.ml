(*
Duplicate the elements of a list.   

# duplicate ["a"; "b"; "c"; "c"; "d"];;
- : string list = ["a"; "a"; "b"; "b"; "c"; "c"; "c"; "c"; "d"; "d"]
*)

let rec duplicate = function [] -> [] | h :: t -> h :: h :: duplicate t
