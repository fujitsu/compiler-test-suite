PROGRAM main
  TYPE ty(k,l)
    INTEGER,KIND::k,l
    INTEGER(KIND=k)::ii
    CHARACTER(LEN=k+l)::ch
  END TYPE
  TYPE ty1(k,l)
    INTEGER,KIND::k,l
    INTEGER(KIND=k)::ii
    TYPE(ty(2,3))::cmp = ty(k=2)(20,"abc")
  END TYPE
END PROGRAM
