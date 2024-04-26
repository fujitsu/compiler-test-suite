PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL, POINTER  :: src
REAL, ALLOCATABLE   :: var(:)

allocate(src, STAT = err)

src=100.00

allocate(var(10), MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
  if(size(var)/=10)  print *,202
  print *,'pass'
else
  print *,101
  var(4) =1000.00
  print *, var(4)
endif 

END PROGRAM MAIN
