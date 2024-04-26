PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(*),allocatable:: ptr_base
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
class(*), pointer ::ptr

obj%real2=10.45
allocate(integer :: ptr)

allocate(obj%ptr_base, mold = ptr)

if(ALLOCATED(obj%ptr_base)) then
  if(same_type_as(obj%ptr_base,ptr) .eqv. .false.) print*,101
else
  print*,'NOT ALLOCATED YET'
endif

select type(aa=>obj%ptr_base)
 type is(integer)
  print*,'pass'
end select
END PROGRAM
