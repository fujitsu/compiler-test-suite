PROGRAM MAIN
IMPLICIT NONE
integer :: err
REAL(16) ::src
CLASS(*), POINTER:: ptr
src=10.0000

allocate(ptr, MOLD=src, STAT = err)

if( err .EQ. 0 ) then 
    select type(ptr)
    type is(integer)
     print*,102
    type is(real(16))
     print*,'pass'
    class default
     print*,104
    end select
else
    print *, 101
endif 

END PROGRAM MAIN
