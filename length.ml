(* Find the number of elements of a list. *)

let rec length = function
  | [] -> 0
  | _ :: t -> 1 + length t;;


(* tail recursive length function *)
let rec length_2 list = 
  let rec f n = function
    | [] -> n
    | _ :: t -> f (n + 1) t
  in 
  f 0 list;; 

