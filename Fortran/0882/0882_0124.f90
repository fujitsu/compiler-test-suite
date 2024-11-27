PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 
CLASS(base),POINTER:: ptr_base(:) => NULL()

if(ASSOCIATED(ptr_base)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(ptr_base(10))
ptr_base%real1=3.6
ptr_base(1)%real1=3.7

if(ASSOCIATED(ptr_base)) then
  print*,'ASSOCIATED'
  print*,ptr_base(1)%real1
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
