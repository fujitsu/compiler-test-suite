PROGRAM MAIN
IMPLICIT NONE
integer :: err
CHARACTER (LEN = 4), POINTER:: var(:) 
allocate(CHARACTER(LEN=4)::var(10) ,STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
END PROGRAM
