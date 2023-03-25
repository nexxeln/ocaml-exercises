(*
Determine whether a given integer number is prime.

# not (is_prime 1);;
- : bool = true
# is_prime 7;;
- : bool = true
# not (is_prime 12);;
- : bool = true   
*)

let is_prime n =
  let rec loop i =
    if i * i > n then true else if n mod i = 0 then false else loop (i + 1)
  in

  if n < 2 then false else loop 2
