PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL, allocatable   :: var
allocate(REAL::var, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var =10.0000
print *, var
END PROGRAM