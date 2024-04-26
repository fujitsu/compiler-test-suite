PROGRAM MAIN
IMPLICIT NONE
integer :: err
integer :: src
CLASS(*), POINTER:: ptr
src=10
allocate(ptr, MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
  select type(ptr)
  type is(real)
    print*,102
  type is(integer)
     print *,'pass'
  end select
else
    print *,101
endif 

END PROGRAM MAIN
