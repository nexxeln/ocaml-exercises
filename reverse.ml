(* Reverse a list. *)

let rec reverse list = 
  let rec f n = function
    | [] -> n
    | h :: t -> f (h :: n) t 
  in 
  f [] list;; 
