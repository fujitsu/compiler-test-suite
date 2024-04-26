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

CLASS(*), POINTER:: ptr
CLASS(*), ALLOCATABLE:: src

type(base) :: bb=base(2.5,6)
allocate(src, STAT=err,source=bb)

allocate(ptr, MOLD=src, STAT = err)
if( err .EQ.  0 ) then 
 select type(ptr)
 type is(base)
   print *, "pass"
 class default
  print*,103
 end select
else
    print *, 101
endif 

END PROGRAM MAIN
