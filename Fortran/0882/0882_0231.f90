PROGRAM MAIN
IMPLICIT NONE
integer  :: err
COMPLEX, allocatable  :: src
COMPLEX, POINTER   :: var(:)

allocate(src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to src"
else
  print *, "ALLOCATION failure to src"
endif

src=(1.1, 2.2)
print*,"SRC=", src

allocate(var(10), SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 
var(4) =(3.3, 4.4)
print *, var(4)

END PROGRAM
