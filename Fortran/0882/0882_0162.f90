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

CLASS(base),POINTER :: ptr_1(:)=>NULL()
CLASS(deriv),POINTER:: ptr_2(:)

allocate(deriv:: ptr_2(10))
ptr_2%int1=10
ptr_2(3)%int1=20

if(ASSOCIATED(ptr_1)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(ptr_1, source = ptr_2)

if(ASSOCIATED(ptr_1)) then
  print*,'ASSOCIATED'
  print*,ptr_1%int1
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
