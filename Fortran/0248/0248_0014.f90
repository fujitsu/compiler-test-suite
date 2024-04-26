PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(*),allocatable:: ptr_base(:)
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
type (deriv), target ::arr(5)
arr(1)%int2=10

allocate(obj%ptr_base, mold = arr)

select type(bb=>obj%ptr_base)
type is(integer)
  print*,101
type is(deriv)
  if(size(bb)==5) print*,'pass'
end select

END PROGRAM MAIN
