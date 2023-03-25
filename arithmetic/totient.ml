(*
Euler's so-called totient function φ(m) is defined as the number of positive integers r (1 ≤ r < m) that are coprime to m. We let φ(1) = 1.
Find out what the value of φ(m) is if m is a prime number. Euler's totient function plays an important role in one of the most widely used public key cryptography methods (RSA). In this exercise you should use the most primitive method to calculate this function (there are smarter ways that we shall discuss later).   

# phi 10;;
- : int = 4
*)

let rec phi n =
  let rec coprime a b = if b = 0 then a = 1 else coprime b (a mod b) in

  let rec count i =
    if i = n then 0 else if coprime i n then 1 + count (i + 1) else count (i + 1)
  in

  if n = 1 then 1 else count 1
