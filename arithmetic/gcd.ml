(*
Determine the greatest common divisor of two positive integer numbers.
Use Euclid's algorithm.

# gcd 13 27;;
- : int = 1
# gcd 20536 7826;;
- : int = 2
*)

let rec gcd x y = if y = 0 then x else gcd y (x mod y)
