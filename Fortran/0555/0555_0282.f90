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
 
CLASS(*),POINTER:: arrptr_base(:) => null()
CLASS(deriv1),POINTER ::arrptr_deriv(:)
 
ALLOCATE(arrptr_deriv(7))
arrptr_deriv%real1=1
arrptr_deriv%int1=2
arrptr_deriv%int2=3
arrptr_deriv%real2=4

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

arrptr_base=>arrptr_deriv(1:4)

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END