PROGRAM MAIN
IMPLICIT NONE
integer :: err
REAL :: src(10)=0
CLASS(*), ALLOCATABLE:: ptr(:)
src(1)=10.0000

allocate(ptr,MOLD=src,STAT = err)

if( err .EQ. 0 ) then 
  select type(pp=>ptr)
  type is(character(*))
    print*,102
  type is(real)
     if(size(pp)/=10) print*,105
    print *,'pass'
  end select
else
    print *,101
endif 

END PROGRAM MAIN
