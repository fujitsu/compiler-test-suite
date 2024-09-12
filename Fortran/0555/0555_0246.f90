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
 
CLASS(*),POINTER:: ptr_base => null()
TYPE(deriv),TARGET :: tar_deriv

tar_deriv%real1=60
tar_deriv%int1=33
tar_deriv%int2=72
tar_deriv%real2=89

if(ASSOCIATED(ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

ptr_base=>tar_deriv

if(ASSOCIATED(ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

END PROGRAM
