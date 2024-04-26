PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1=0
  INTEGER(KIND=8) ::int1=0
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(base),allocatable:: ptr_base
  INTEGER(KIND=8) :: int2=0
  REAL(KIND=8) ::real2=0
END TYPE 

type (deriv) ::obj
type (base) :: arr(5)
CLASS(base),allocatable:: new_base

arr%int1=10
arr(3)%int1=20

allocate(obj%ptr_base, mold=arr(3))

if(ALLOCATED(obj%ptr_base)) then
  call move_alloc(obj%ptr_base,new_base)
  if( same_type_as(new_base,arr(3)) .eqv. .true.) print*,'pass'
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
