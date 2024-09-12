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
  TYPE(deriv1),POINTER::ptr1_deriv1 => null()
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
 CLASS(*),POINTER:: arrptr_base(:,:) => null()
END TYPE
 
TYPE(tata)::obj_tata
TYPE(deriv1),TARGET ::arrtar_deriv(3,4)
 
      if(ASSOCIATED(obj_tata%arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
obj_tata%arrptr_base=>arrtar_deriv(1:2,2:4)
 
      if(ASSOCIATED(obj_tata%arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
END PROGRAM
