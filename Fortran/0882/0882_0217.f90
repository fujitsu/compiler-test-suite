PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX, POINTER   :: var(:)
allocate(COMPLEX::var(10), STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var(4) =(10.00, 20.00)
print *, var(4)
END PROGRAM
