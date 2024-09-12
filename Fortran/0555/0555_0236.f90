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

TYPE cha
 TYPE(deriv1),POINTER ::arr_deriv(:,:)
END TYPE

TYPE(cha)::obj_cha
TYPE(tata)::obj_tata
TYPE(base)::obj_base

ALLOCATE(obj_cha%arr_deriv(4,5))

obj_cha%arr_deriv%real1=1
obj_cha%arr_deriv%int1=2
obj_cha%arr_deriv%int2=3
obj_cha%arr_deriv%real2=4
 
obj_cha%arr_deriv(3,3)%real1=10
obj_cha%arr_deriv(3,3)%int1=20
obj_cha%arr_deriv(3,3)%int2=30
obj_cha%arr_deriv(3,3)%real2=40
 
obj_tata%arrptr_base=>obj_cha%arr_deriv(1:4,1:3)
obj_base=obj_tata%arrptr_base(3,3)
 
print*,obj_base
 
END PROGRAM
