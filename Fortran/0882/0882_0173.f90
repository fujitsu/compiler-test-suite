PROGRAM MAIN
 
IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE

TYPE ,EXTENDS(deriv)::deriv1
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real3
  CLASS(deriv),ALLOCATABLE::deriv_com
END TYPE

TYPE(deriv1)::obj1
TYPE(deriv1)::obj2
ALLOCATE(obj2%deriv_com)
obj2%int2=8
obj2%deriv_com%int2=43
obj2%deriv_com%real2=2.7
obj2%real2=10.5
obj1=obj2
print*,obj1%deriv_com%int2
print*,obj1%deriv_com%real2

END
