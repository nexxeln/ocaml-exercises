(*
Given a run-length code list generated as specified in the previous problem, construct its uncompressed version.

#  decode [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")];;
- : string list =
["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"]   
*)

type 'a rle = One of 'a | Many of int * 'a

let decode l =
  let rec init n f = if n = 0 then [] else f (n - 1) :: init (n - 1) f in

  let rec aux acc = function
    | [] -> acc
    | One x :: t -> aux (x :: acc) t
    | Many (n, x) :: t -> aux (init n (fun _ -> x) @ acc) t
  in

  List.rev (aux [] l)
