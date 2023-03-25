(*
Create a List Containing All Integers Within a Given Range
If first argument is greater than second, produce a list in decreasing order.

# range 4 9;;
- : int list = [4; 5; 6; 7; 8; 9]
*)

let rec range x y =
  let rec aux x y = if x > y then [] else x :: aux (x + 1) y in
  if x > y then List.rev (aux y x) else aux x y
