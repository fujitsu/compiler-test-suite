PROGRAM MAIN
IMPLICIT NONE
integer :: err
CLASS(*), POINTER:: ptr
allocate(REAL ::ptr, STAT = err)
if(err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
    print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM