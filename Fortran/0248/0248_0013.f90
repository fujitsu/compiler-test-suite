PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1=0
  INTEGER(KIND=8) ::int1=0
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(*),POINTER:: ptr_base(:)
  INTEGER(KIND=8) :: int2=0
  REAL(KIND=8) ::real2=0
END TYPE 

type (deriv) ::obj
type(deriv), pointer ::ptr(:) 
allocate(ptr(10))
ptr(1)%int2=20

allocate(obj%ptr_base, mold=ptr)

select type(aa=>obj%ptr_base)
type is(deriv)
  if(any(aa%int2 /= 0)) print*,101,aa%int2
  print*,'pass'
class default
  print*,102
end select

END PROGRAM MAIN
