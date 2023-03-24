(* Find the N'th element of a list. *)

let rec nth n list =
  match list with
  | [] -> None
  | h :: t -> if n = 0 then Some h else nth (n - 1) t
