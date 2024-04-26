PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL  :: src 
REAL, POINTER   :: var
src=10.00
allocate(var, MOLD=src, STAT = err)

if( err .EQ. 0 ) then 
  print *,'pass'
else
  print *,101
endif 
END PROGRAM MAIN
