PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1=0
  INTEGER(KIND=8) ::int1=0
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(base),POINTER:: ptr_base(:)
  INTEGER(KIND=8) :: int2=0
  REAL(KIND=8) ::real2=0
END TYPE 

type (deriv) ::obj
type (base), target :: arr(5)

arr%int1=10

allocate(obj%ptr_base, mold=arr)

if(ASSOCIATED(obj%ptr_base)) then
  if(same_type_as(obj%ptr_base,arr))print*,'pass'
  if(obj%ptr_base(1)%int1/=0) print*,101
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM MAIN
