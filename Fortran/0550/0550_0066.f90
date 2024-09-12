PROGRAM MAIN
IMPLICIT NONE
integer :: err
character(LEN=20), allocatable :: src(:)  
CHARACTER(LEN=20),  POINTER:: var(:) 

CHARACTER(LEN=20) :: sss(5) 

sss = "12345678901234567890"

allocate(src(5),STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to src"
else
  print *, "ALLOCATION failure to src"
endif 

allocate(var, SOURCE= sss,STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 

src="HELLO"
var="HOW ARE YOU"
print *, src
print *, var 
END PROGRAM
