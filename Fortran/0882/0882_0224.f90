PROGRAM MAIN
IMPLICIT NONE
integer  :: err
integer, POINTER  :: src
integer, ALLOCATABLE   :: var(:)

allocate(src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to src"
else
  print *, "ALLOCATION failure to src"
endif

src=10
print*,"SRC =",  src

allocate(var(10), SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 

var(4) =10
print *, var(4)
END PROGRAM
