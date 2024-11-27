PROGRAM MAIN
IMPLICIT NONE
integer :: err
REAL ::src
CLASS(*), POINTER:: ptr
src=10.0000
allocate(ptr, SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
    print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM
