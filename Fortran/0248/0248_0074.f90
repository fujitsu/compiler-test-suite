PROGRAM MAIN
IMPLICIT NONE
integer :: err
character(LEN=20), allocatable :: src(:,:,:)
CHARACTER(LEN=:),  POINTER:: var(:,:,:),bar(:,:,:),car(:,:,:)
CHARACTER(LEN=:),  ALLOCATABLE:: war(:,:,:),nar(:,:,:)

allocate(src(5,4,3),STAT = err)
src='fail'
allocate(bar,var,nar,car,war, MOLD= src,STAT = err)

if( err .EQ. 0 ) then 
  if(len(var)==20) then
    if(size(var)==5*4*3) print *,'pass'
  endif
  if(len(bar)==20) then
    if(size(bar)/=5*4*3) print *,201
  endif
  if(len(nar)==20) then
    if(size(nar)/=5*4*3) print *,202
  endif
  if(len(car)==20) then
    if(size(car)/=5*4*3) print *,203
  endif
  if(len(war)==20) then
    if(size(war)/=5*4*3) print *,204
  endif
else
  print *,101
  src="HELLO"
  var="HOW ARE YOU"
  print *, src
  print *, var 
  car="HOW ARE YOU"
  print *, car
  war="HOW ARE YOU"
  print *, war
  nar="HOW ARE YOU"
  print *, nar
  bar="HOW ARE YOU"
  print *, bar
endif 
END PROGRAM MAIN
