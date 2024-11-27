PROGRAM MAIN
IMPLICIT NONE
integer  :: err
integer, POINTER   :: var
allocate(integer::var, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var =10
print *, var
END PROGRAM
