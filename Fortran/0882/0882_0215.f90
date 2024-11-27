PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX, POINTER   :: var
allocate(COMPLEX::var, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var =(10.50, 20.50)
print *, var
END PROGRAM
