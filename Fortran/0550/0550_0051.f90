PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(*),POINTER:: ptr_base => null()
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
class(*), pointer ::ptr 

obj%int2=18
allocate(integer:: ptr)

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
