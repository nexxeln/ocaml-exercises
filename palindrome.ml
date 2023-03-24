(* Find out whether a list is a palindrome. Hint: A palindrome is its own reverse. *)

let is_palindrome list = 
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (h :: acc) t
  in 
   if list = aux [] list then true else false;;

(* Using List.rev *)

let is_palindrome_2 list = 
  list = List.rev list;;
