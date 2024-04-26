PROGRAM MAIN
IMPLICIT NONE
integer :: err
COMPLEX, PARAMETER :: src = (1.0,2.0)
CLASS(*), ALLOCATABLE :: ptr

allocate(ptr, MOLD=src, STAT = err)

if( err .EQ. 0 ) then 
 select type(ptr)
  type is(integer)
    print*,102
  type is(complex)
    print *,'pass'
 end select
else
    print *,101
endif 

END PROGRAM MAIN
