PROGRAM MAIN
IMPLICIT NONE
integer :: err
REAL ::src
CLASS(*), ALLOCATABLE:: ptr
src=10.0000
allocate(ptr, MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
    select type(ptr)
    type is(integer)
     print*,102
    type is(real)
     print *, 'pass'
    class default
     print*,103
    endselect
else
    print *, 101
endif 

END PROGRAM MAIN
