PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(base),POINTER:: ptr_base=>null()
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 
type (deriv) ::obj

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(obj%ptr_base)
obj%ptr_base%real1=2.6

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
  if (abs(obj%ptr_base%real1-2.6)>0.0001)print *,301
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
