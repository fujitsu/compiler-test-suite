PROGRAM MAIN
IMPLICIT NONE
integer :: err

CHARACTER (LEN = 5), POINTER:: src
CHARACTER (LEN = 5), target:: tar
src=>tar
tar='fail'

call sub(src)
contains
subroutine sub (dum)
CHARACTER (LEN = *), POINTER:: dum
CLASS(*), ALLOCATABLE :: ptr(:)
allocate(ptr(10) ,MOLD=dum,STAT = err)

if( err .EQ. 0 ) then 
 select type(aa=>ptr(4))
  type is(character(*))
  if(len(aa)/=5) print*,102
  print *,'pass'
 end select
else
  print *,101
endif 

end subroutine
END PROGRAM MAIN
