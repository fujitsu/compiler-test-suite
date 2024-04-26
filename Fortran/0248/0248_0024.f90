PROGRAM MAIN
IMPLICIT NONE
integer :: err
integer :: src(20) =0
CLASS(*), POINTER:: ptr(:)
src(4)=10
allocate(ptr(10), MOLD=src, STAT=err)
if( err .EQ. 0 ) then 
    select type(ptr)
    type is(real)
     print*,102
    type is(integer)
     if(size(ptr)/=10) print*,105
     print *, 'pass'
    class default
     print*,103
    endselect
else
    print *, 101
endif 

END PROGRAM MAIN
