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

type container
 CLASS(*), ALLOCATABLE :: ptr(:,:)
 CLASS(base), POINTER     :: src(:,:)
end type

type con
 type(container) :: obj
end type

type(con) :: mm
type(deriv) :: bb(10,10)=deriv(2.5,6,7,3.4)
allocate(mm%obj%src(10,10), STAT=err, source=bb)

allocate(mm%obj%ptr, mold=mm%obj%src,STAT=err)
if( err .EQ. 0 ) then 
 select type(aa=>mm%obj%ptr)
 type is(deriv)
   if((size(aa) /= 100)) print*,203
   print *, "pass"
 class default
  print*,103
 end select
else
    print *, 101
endif 

END PROGRAM
