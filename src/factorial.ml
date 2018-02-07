
module Utils =
struct

let tr_factorial n =
  (* let ( + ) x f = x ^ f in *)
  let rec aux i accum =
    if i > n then accum
    else aux (i + 1) (accum * i)
  in
  aux 1 1

let rec ntr_factorial = function
  | 0 -> 1
  | 1 -> 1
  | n when n > 0 -> n * ntr_factorial (n - 1)
  | _ -> raise (Invalid_argument "Please provide positive numbers only.")


let imp_factorial n =
  let result = ref 1 in
  let () = print_endline "Hello " in
  for i = 1 to n do
    result := i * !result
  done;
  !result

end
