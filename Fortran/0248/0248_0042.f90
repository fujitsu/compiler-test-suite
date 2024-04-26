PROGRAM MAIN
IMPLICIT NONE
integer  :: err
REAL, allocatable  :: src
REAL, POINTER   :: var(:)

allocate(src, STAT = err)

src=10.00

allocate(var(10), MOLD=src, STAT = err)
if( err .EQ. 0 ) then 
    print *,'pass'
else
  print *,101
endif 

END PROGRAM MAIN
