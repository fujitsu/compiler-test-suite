PROGRAM main
  TYPE ty0(k,l)
    INTEGER,KIND::k
    INTEGER,LEN::l
    INTEGER(KIND=k)::ii
  END TYPE
  TYPE ty(k,l,k1,l1)
    INTEGER,KIND ::k1,k
    INTEGER,LEN ::l,l1
    CLASS(ty0(4)),POINTER::cmp
  END TYPE 
END PROGRAM