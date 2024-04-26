PROGRAM MAIN
IMPLICIT NONE
integer :: err
COMPLEX :: src(20)=(0,0)
CLASS(*), POINTER:: ptr(:)
src(1)=(1.0, 2.0)
allocate(ptr(10),MOLD=src,STAT = err)
if( err .EQ. 0 ) then 
    select type(ptr)
    type is(integer)
     print*,102
    type is(complex)
     if(size(ptr)/=10) print*,105
     print*, 'pass'
    class default
     print*,103
    endselect
else
    print *, 101
endif 

END PROGRAM MAIN
