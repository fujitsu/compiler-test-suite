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

CLASS(*),POINTER:: arrptr_base(:,:) => null()
TYPE(deriv1),TARGET ::arrtar_deriv(3,4)

arrtar_deriv%real1=1
arrtar_deriv%int1=2
arrtar_deriv%int2=3
arrtar_deriv%real2=4
arrtar_deriv(3,4)%real1=10
arrtar_deriv(3,4)%int1=20
arrtar_deriv(3,4)%int2=30
arrtar_deriv(3,4)%real2=40

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

arrptr_base=>arrtar_deriv

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END PROGRAM
