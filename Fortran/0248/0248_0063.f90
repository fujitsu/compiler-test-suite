PROGRAM MAIN
IMPLICIT NONE
integer :: err
integer :: src(10) =0
CLASS(*), ALLOCATABLE:: ptr(:)
src(4)=10

allocate(ptr, MOLD=src+src+1+src-src, STAT=err)

if(size(ptr)/=10) print*,105
if( err .EQ. 0 ) then 
  select type(pp=>ptr(2:5))
   type is(character(*))
    print*,102
   type is(integer)
    if(size(pp)/=4) print*,104
    if(size(ptr)/=10) print*,105
    print *,'pass'
  end select
else
    print *,101
endif 

END PROGRAM MAIN
