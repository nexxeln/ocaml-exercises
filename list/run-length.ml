(* Run-Length Encoding *)

(*
# encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
- : (int * string) list =
[(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]
*)

let head = function [] -> failwith "empty list" | x :: _ -> x
let tail = function [] -> failwith "empty list" | _ :: xs -> xs

let rec encode = function
  | [] -> []
  | [ x ] -> [ (1, x) ]
  | x :: (y :: _ as t) ->
      if x = y then
        let n, _ = head (encode t) in
        (n + 1, x) :: tail (encode t)
      else (1, x) :: encode t
