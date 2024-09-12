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

CLASS(deriv),POINTER:: ptr_base
allocate(ptr_base)
ptr_base%int2=10

call sub(ptr_base)
contains 

subroutine sub (dum)

CLASS(deriv),target:: dum 
CLASS(base),POINTER:: ptr1
CLASS(base),POINTER:: ptr2
ptr_base%int2=20

dum%int1=19
allocate(ptr1, ptr2, source = dum)

if(ASSOCIATED(ptr1).and.ASSOCIATED(ptr2)) then

  select type(ptr1)
  type is(base)
   print*,103
  type is(deriv)
   if(ptr1%int1.ne.19)print*,201
   if(ptr1%int2.ne.20)print*,202

  class default
   print*,104
  end select

  select type(ptr2)
  type is(base)
   print*,105
  type is(deriv)
   if(ptr2%int1.ne.19)print*,301
   if(ptr2%int2.ne.20)print*,302

  class default
   print*,106
  end select
else
  print*,101
endif
  print*,'pass'
end subroutine

END PROGRAM
