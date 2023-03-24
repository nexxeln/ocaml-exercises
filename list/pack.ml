(* Pack consecutive duplicates of list elements into sublists. *)

(*
# pack ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"];;
- : string list list =
[["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];
 ["e"; "e"; "e"; "e"]]   
*)

let head = function [] -> failwith "empty list" | x :: _ -> x
let tail = function [] -> failwith "empty list" | _ :: t -> t

let rec pack = function
  | [] -> []
  | [ x ] -> [ [ x ] ]
  | x :: (y :: _ as t) ->
      if x = y then (x :: head (pack t)) :: tail (pack t) else [ x ] :: pack t
