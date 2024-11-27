PROGRAM MAIN
IMPLICIT NONE
integer :: err
CHARACTER (LEN = 5), allocatable:: var 
allocate(CHARACTER(LEN=5)::var ,STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var = "HELLO"
print *, var
END PROGRAM
