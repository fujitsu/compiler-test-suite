PROGRAM MAIN

IMPLICIT NONE
integer :: err 
TYPE base
  REAL(KIND=8) ::real1=3.4
  INTEGER(KIND=8) ::int1=2
END TYPE

TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2=9
  REAL(KIND=8) ::real2=8.2
END TYPE 

CLASS(*), ALLOCATABLE :: ptr(:,:)
CLASS(base), POINTER     :: src(:,:)

type(deriv) :: bb(10,10)=deriv(2.5,6,7,3.4)
allocate(src(10,10), STAT=err, source=bb)

allocate(ptr, mold=src,STAT=err)
if( err .EQ. 0 ) then 
 select type(ptr)
 type is(deriv)
   if((size(ptr) /= 100)) print*,203
   print *, "pass"
 class default
  print*,103
 end select
else
    print *, 101
endif 

END PROGRAM
