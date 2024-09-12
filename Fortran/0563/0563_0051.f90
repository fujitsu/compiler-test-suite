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

type (deriv) ::obj1
type (deriv) ::obj2
type (deriv), target ::arr(5)
arr(:)%int2=10

if(ALLOCATED(obj1%ptr_base).neqv..false.) Print*,101
if(ALLOCATED(obj2%ptr_base).neqv..false.) Print*,102

allocate(obj1%ptr_base,obj2%ptr_base, source =arr)

if(ALLOCATED(obj1%ptr_base).neqv..true.) Print*,103
if(ALLOCATED(obj2%ptr_base).neqv..true.) Print*,104

print*,"pass"

END PROGRAM
