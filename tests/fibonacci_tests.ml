(* math.ml signatures *)

module Utils :
  sig
    exception InvalidRange
    exception InvalidNumber
    exception IllegalExpression
    val max : 'a -> 'a -> 'a
    val range : int -> int -> int list
    val abs : int -> int
    val assert_range : int -> int -> unit
  end
