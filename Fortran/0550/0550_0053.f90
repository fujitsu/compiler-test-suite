PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(*),POINTER:: ptr_base(:) => null()
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
type(deriv), pointer ::ptr(:) 
allocate(ptr(10))
ptr(1)%int2=20

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(obj%ptr_base, source=ptr)

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
