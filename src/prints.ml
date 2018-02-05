(* print string of float *)
let string_of_float f =
  let s = format_float "%.12g" f in
  let l = string_length s in
  let rec loop i =
    if i >= l then s ^ "."
    else if s.[i] = '.' || s.[i] = 'e' then s
    else loop (i+1) in
  loop 0

(* print string of float *)
let string_of_float_fast f =
  let s = format_float "%.12g" f in
  if String.contains s '.' || String.contains s 'e'
  then s
  else s ^ "."

(* Print elements of int list *)
let rec print_int_list = function
  [] -> ()
  | e::l -> print_int e ; print_string " " ; print_list l

(* Print elements of int list *)
let rec print_float_list = function
  [] -> ()
  | e::l -> print_string (string_of_float e); print_string " " ; print_list l
