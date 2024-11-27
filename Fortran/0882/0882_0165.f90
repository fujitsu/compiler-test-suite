PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(base),POINTER:: ptr_base=>NULL()
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
type (base), target :: arr(5)

arr%int1=10
arr%real1=10.34
arr(3)%int1=20

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(obj%ptr_base, source=arr(3))

if(ASSOCIATED(obj%ptr_base)) then
  print*,'ASSOCIATED'
  print*,obj%ptr_base%int1
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
