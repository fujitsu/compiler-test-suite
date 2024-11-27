PROGRAM MAIN
IMPLICIT NONE
integer :: err
COMPLEX, PARAMETER :: src = (1.0,2.0)
CLASS(*), POINTER:: ptr
allocate(ptr, SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
    print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM
