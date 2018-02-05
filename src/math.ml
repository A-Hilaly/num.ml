(* math.ml module *)

module Utils =
struct

(* When range is invalid *)
exception InvalidRange

(* When expected argument is not number *)
exception InvalidNumber

(* When command is correct but args are wierd *)
exception IllegalExpression


let max a b =
  if a > b then a else b

let rec range a b =
  if a > b then []
  else a :: range (a+1) b;;

let abs x =
  if x >= 0 then x else -x

(* ASSERT RANGE *)
let rec assert_range m n=
  match (m, n) with
  | (_, 0) -> raise InvalidRange
  | (a, b) -> if a > b then raise InvalidRange

end
