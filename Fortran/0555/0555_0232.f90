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

TYPE tata
 CLASS(base),POINTER:: arrptr_base(:,:)
END TYPE

TYPE(tata)::obj_tata
TYPE(base)::obj_base
TYPE(deriv1),POINTER ::arr_deriv(:,:)

ALLOCATE(arr_deriv(4,5))
arr_deriv%real1=1
arr_deriv%int1=2
arr_deriv%int2=3
arr_deriv%real2=4

arr_deriv(3,4)%real1=10
arr_deriv(3,4)%int1=20
arr_deriv(3,4)%int2=30
arr_deriv(3,4)%real2=40
 
obj_tata%arrptr_base=>arr_deriv(1:4,2:5)
obj_base=obj_tata%arrptr_base(3,3)
 
print*,obj_base
 
END PROGRAM
