PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL  :: src
REAL, allocatable   :: var
src=10.0000
allocate(var, MOLD=src, STAT = err)

if( err .EQ. 0 ) then 
  print *,'pass'
  var=2.0
else
  print *,101
endif 
END PROGRAM MAIN
