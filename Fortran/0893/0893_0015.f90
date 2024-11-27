PROGRAM main
  INTEGER,PARAMETER::cnt = 2
  INTEGER:: var =2
  TYPE ty(k,l)
    INTEGER,KIND::k
    INTEGER,LEN ::l
    INTEGER(KIND=k)::ii
    CHARACTER(LEN=k+l)::ch
  END TYPE
  TYPE ty1(k,l)
    INTEGER,KIND::k
    INTEGER,LEN ::l
    INTEGER(KIND=k)::ii
    TYPE(ty(2,3))::cmp = ty(20,"abc")
  END TYPE
END PROGRAM
