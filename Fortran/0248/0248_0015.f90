PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1=0
  INTEGER(KIND=8) ::int1=0
END TYPE

TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2=0
  REAL(KIND=8) ::real2=0
END TYPE

TYPE ,EXTENDS(deriv)::deriv1
  INTEGER(KIND=8) :: int3=0
  REAL(KIND=8) ::real3=0
  CLASS(deriv),ALLOCATABLE::deriv_com
END TYPE

TYPE con
  TYPE(deriv1)::obj2
END TYPE

TYPE(con)::obj
TYPE(con)::obj1
ALLOCATE(obj%obj2%deriv_com)
obj%obj2%int2=8
obj%obj2%deriv_com%int2=43
obj%obj2%deriv_com%real2=2.7
obj%obj2%real2=10.5
allocate(obj1%obj2%deriv_com,mold=obj%obj2)

if(obj1%obj2%deriv_com%int2/=0) print*,101
if(int(obj1%obj2%deriv_com%real2)/=0) print*,102

print*,'pass'

END
