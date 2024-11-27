PROGRAM MAIN
IMPLICIT NONE
integer :: err
CHARACTER (LEN = 50), POINTER:: src 
CHARACTER (LEN = 50), allocatable:: var 

allocate(CHARACTER(LEN=50)::src ,STAT = err)
src="ABC"
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to src"
else
  print *, "ALLOCATION failure to src"
endif 

allocate(var,SOURCE=src,STAT = err)

if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
  print *, "ALLOCATION failure to ptr"
endif 

src="HELLO"
var = "HOW are you"

print *, src
print *, var

END PROGRAM
