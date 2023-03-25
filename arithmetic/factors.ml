(*
Determine the Prime Factors of a Given Positive Integer 
Construct a flat list containing the prime factors in ascending order.   

# factors 315;;
- : int list = [3; 3; 5; 7]
*)

let rec factors n =
  let rec aux n d =
    if n = 1 then []
    else if n mod d = 0 then d :: aux (n / d) d
    else aux n (d + 1)
  in

  aux n 2
