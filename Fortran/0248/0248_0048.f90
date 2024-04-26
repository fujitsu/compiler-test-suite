PROGRAM MAIN
IMPLICIT NONE
integer :: err
character(LEN=20), allocatable :: src(:)  
CHARACTER(LEN=:),  POINTER:: var(:) 

allocate(src(5),STAT = err)
src='fail'
allocate(var, MOLD= src,STAT = err)
if( err .EQ. 0 ) then 
  if(len(var)==20) then
    if(size(var)==5) print *,'pass'
  endif
else
  print *,101
  src="HELLO"
  var="HOW ARE YOU"
  print *, src
  print *, var 
endif 
END PROGRAM MAIN
