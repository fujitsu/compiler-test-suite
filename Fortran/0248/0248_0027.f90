PROGRAM MAIN
IMPLICIT NONE
integer :: err
integer :: src
CLASS(*), ALLOCATABLE:: ptr
src=10

allocate(ptr, MOLD=src, STAT = err)

if( err .EQ. 0 ) then 
 select type(pp=>ptr)
  type is(character(*))
    print*,102
  type is(integer)
    print *,'pass'
  class default
    print*,104
 end select
else
    print *,101
endif 

END PROGRAM MAIN
