PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX, allocatable   :: var(:)
allocate(COMPLEX::var(10), STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var(1) =(10.20, 20.50)
print *, var(1)
END PROGRAM
