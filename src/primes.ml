(* OCAML PRIME GEN *)

open List;;
open Math.Utils;;

module Utils =
struct

(* IS PRIME *)
let is_prime n =
  let is_divisor d p =
    if p mod d = 0 then 1 else 0
  in
  let targets = range 2 (int_of_float(sqrt(float_of_int(n))))
  in
  let rec test_targets k targets =
    match targets with
      | [] -> true
      | x::trg -> if is_divisor x k = 1 then false else test_targets k trg
  in
  test_targets n targets
;;

(* Get all primes beetwin m and n *)
let get_primes m n = List.filter is_prime (Math.Utils.range m n);;

(* Get the nth prime beetwin m and n *)
let get_n_prime k m n = List.nth (get_primes m n) k;;

(*
Is the prime number indexed 10001th
See http://projecteuler.net problem 7
*)

end
