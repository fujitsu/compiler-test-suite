PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv1
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 
 
TYPE ,EXTENDS(deriv1)::deriv2
  CHARACTER(LEN=8) :: name1
  TYPE(deriv1),POINTER::ptr1_deriv1
  REAL(KIND=8) ::real3
END TYPE 

TYPE ,EXTENDS(deriv2)::deriv3
  CHARACTER(LEN=8)::name2
  TYPE(deriv2)::obj1_deriv2
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real4
END TYPE 

TYPE ,EXTENDS(deriv3)::deriv4
  INTEGER(KIND=8) :: int4
  REAL(KIND=8) ::real5
END TYPE 

CLASS(base),POINTER:: arrptr_base(:,:)
TYPE(base)::obj_base
TYPE(deriv1),POINTER ::arrptr_deriv(:,:)

ALLOCATE(arrptr_deriv(5,5))

arrptr_deriv%real1=1
arrptr_deriv%int1=2
arrptr_deriv%int2=3
arrptr_deriv%real2=4

arrptr_deriv(3,4)%real1=10
arrptr_deriv(3,4)%int1=20
arrptr_deriv(3,4)%int2=30
arrptr_deriv(3,4)%real2=40

arrptr_base=>arrptr_deriv
obj_base=arrptr_base(3,4)

print*,obj_base
END
