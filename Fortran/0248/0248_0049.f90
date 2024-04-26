PROGRAM MAIN
IMPLICIT NONE
integer :: err
CHARACTER (LEN = 5), POINTER:: src 
CHARACTER (LEN = :), allocatable:: var 

allocate(CHARACTER(LEN=5)::src ,STAT = err)
src='fail'

allocate(var,MOLD=src,STAT = err)

if( err .EQ. 0 ) then 
  if(len(var)==5)  print *,'pass'
else
  print *, 101
src="HELLO"
var = "HOW are you"

print *, src
print *, var
endif 

END PROGRAM
