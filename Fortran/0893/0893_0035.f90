MODULE mod1
 IMPLICIT NONE
 INTEGER,PARAMETER::cnt=4
 INTEGER::var = 5
 TYPE ty(k,l)
   INTEGER,KIND::k
   INTEGER,LEN ::l
 END TYPE
 TYPE,EXTENDS(ty)::ty1(k1,l1)
   INTEGER(KIND=k),KIND::k1
   INTEGER(KIND=k),LEN ::l1
   CHARACTER(LEN=l+var+l)::ch(k,l)
   INTEGER(KIND=k+k1)::ii
 END TYPE
END MODULE
END PROGRAM
