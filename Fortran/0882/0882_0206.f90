PROGRAM MAIN
IMPLICIT NONE
integer :: err

CHARACTER (LEN = 5), POINTER:: src
CHARACTER (LEN = 5), target:: tar="ABC"
src=>tar

call sub(src)
contains
subroutine sub (dum)
CHARACTER (LEN = *), POINTER:: dum
CLASS(*), ALLOCATABLE :: ptr(:)
allocate(ptr(10) ,SOURCE=dum,STAT = err)

if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 

end subroutine
END PROGRAM
