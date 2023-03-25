(*
Insert an Element at a Given Position Into a List
   
Start counting list elements with 0. If the position is larger or equal to the length of the list, insert the element at the end. (The behavior is unspecified if the position is negative.)

# insert_at "alfa" 1 ["a"; "b"; "c"; "d"];;
- : string list = ["a"; "alfa"; "b"; "c"; "d"]
*)

let rec insert_at x n = function
  | [] -> [ x ]
  | h :: t as l -> if n <= 0 then x :: l else h :: insert_at x (n - 1) t
