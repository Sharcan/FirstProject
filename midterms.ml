(* Nicolas Brazzolotto*)

(*Exo 2.1*)

let decompose n = if n<2 then invalid_arg "decompose: parameter <2"
  else let d=(n-1) and list=[] in
       let rec decompose_rec n d = match d with
      2-> list
         |d when n mod d= 0 -> d::decompose_rec n (d-1)
    |d -> decompose_rec n (d-1) in decompose_rec n d;;


decompose 45;;
