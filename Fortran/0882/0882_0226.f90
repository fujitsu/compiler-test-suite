PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL  :: src
REAL, allocatable   :: var
src=10.0000
allocate(var, SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var =100.00
print *, var
END PROGRAM
