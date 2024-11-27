PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL, POINTER   :: var(:)
allocate(REAL::var(10), STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var(4) =10.0000
print *, var(4)
END PROGRAM
