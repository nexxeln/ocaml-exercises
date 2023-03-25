(*
Drop every N'th element from a list.

# drop ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3;;
- : string list = ["a"; "b"; "d"; "e"; "g"; "h"; "j"]
*)

let rec drop list n =
  let rec aux list n i =
    match list with
    | [] -> []
    | h :: t -> if i mod n = 0 then aux t n (i + 1) else h :: aux t n (i + 1)
  in

  aux list n 1
