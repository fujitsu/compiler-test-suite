PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX, POINTER  :: src
COMPLEX, ALLOCATABLE   :: var(:)

allocate(src, STAT = err)

src=(1.1, 2.2)

allocate(var(10), MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
    if(size(var)==10) print *,'pass'
else
  print *, 101
  var(4) =(2.2, 4.4)
  print *, var(4)
endif 
END PROGRAM MAIN
