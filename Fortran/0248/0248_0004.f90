PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1=0
  INTEGER(KIND=8) ::int1=0
END TYPE

TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2=0
  REAL(KIND=8) ::real2=0
END TYPE 

CLASS(base),POINTER :: ptr_1(:),ptr_3(:)
CLASS(deriv),POINTER:: ptr_2(:)

allocate(deriv:: ptr_2(20))
ptr_2%int1=10
ptr_2(3)%int1=20

allocate(ptr_1(10), mold = ptr_2)
allocate(ptr_3(10))

if(ASSOCIATED(ptr_1)) then
 select type(aa=>ptr_1)
 type is(deriv)
  print*,'pass'
  if(size(aa)/=10) print*,102
  if(size(ptr_2)/=20) print*,103
 class default
  print*,104
 end select
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
