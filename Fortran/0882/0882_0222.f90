PROGRAM MAIN
IMPLICIT NONE
integer  :: err
integer  :: src
integer, allocatable   :: var
src=10
allocate(var, SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var =100
print *, var
END PROGRAM
