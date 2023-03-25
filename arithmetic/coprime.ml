(*
Determine whether two positive integer numbers are coprime.
Two numbers are coprime if their greatest common divisor equals 1.   

# coprime 13 27;;
- : bool = true
# not (coprime 20536 7826);;
- : bool = true
*)

let rec coprime x y = if y = 0 then x = 1 else coprime y (x mod y)
