(*
Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 0 (this is the way the List module numbers elements).

# slice ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 2 6;;
- : string list = ["c"; "d"; "e"; "f"; "g"]   
*)

let rec slice list i k =
  let rec aux n = function
    | [] -> []
    | h :: t -> if n >= i && n <= k then h :: aux (n + 1) t else aux (n + 1) t
  in
  aux 0 list
