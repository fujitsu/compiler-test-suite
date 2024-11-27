PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL, allocatable   :: var(:)
allocate(REAL::var(10), STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var(1) =10.0050
print *, var(1)
END PROGRAM
