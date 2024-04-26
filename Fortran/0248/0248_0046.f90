PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX, allocatable  :: src
COMPLEX, POINTER   :: var(:)

allocate(src, STAT = err)

src=(1.1, 2.2)

allocate(var(10), MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
    if(size(var)==10) print *,'pass'
else
  print *,101
  var(4) =(3.3, 4.4)
  print *, var(4)
endif 

END PROGRAM MAIN
