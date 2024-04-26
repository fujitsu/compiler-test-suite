PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX  :: src
COMPLEX, allocatable   :: var
src=(1.1, 2.2)
allocate(var, MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
  print *,'pass'
else
  print *,101
  var =(3.3, 4.4)
  print *, var
endif 
END PROGRAM MAIN
