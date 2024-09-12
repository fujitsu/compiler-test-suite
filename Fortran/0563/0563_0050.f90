PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(base),allocatable:: ptr_base(:)
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj1
type (deriv) ::obj2
class(deriv), pointer ::ptr(:)
allocate(ptr(10))
ptr%int1=10

if(ALLOCATED(obj1%ptr_base).neqv..false.) Print*,101
if(ALLOCATED(obj2%ptr_base).neqv..false.) Print*,102

allocate(obj1%ptr_base,obj2%ptr_base, source =ptr)
if(obj1%ptr_base(4)%int1.ne.10)print*,105
if(obj2%ptr_base(4)%int1.ne.10)print*,106

if(ALLOCATED(obj1%ptr_base).neqv..true.) Print*,103
if(ALLOCATED(obj2%ptr_base).neqv..true.) Print*,104

print*,"pass"

END PROGRAM
