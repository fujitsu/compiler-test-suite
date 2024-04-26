PROGRAM MAIN
IMPLICIT NONE
integer  :: err
integer  :: src
integer, allocatable   :: var
src=10

allocate(var, MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
  print *,'pass'
  var=1
else
  print *,101
endif 
END PROGRAM MAIN
