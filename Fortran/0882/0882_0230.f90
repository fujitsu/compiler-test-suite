PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX  :: src
COMPLEX, allocatable   :: var
src=(1.1, 2.2)
allocate(var, SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var =(3.3, 4.4)
print *, var
END PROGRAM
