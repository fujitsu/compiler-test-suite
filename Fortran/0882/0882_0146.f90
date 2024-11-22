PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(base),POINTER:: ptr_base(:)=>NULL()
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(deriv :: obj%ptr_base(10))
obj%ptr_base(1)%int1=19

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
  print*,obj%ptr_base(1)%int1
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM