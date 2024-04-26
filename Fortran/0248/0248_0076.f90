PROGRAM MAIN
IMPLICIT NONE
integer :: err
character(LEN=20), allocatable :: src
CHARACTER(LEN=:),  POINTER:: var(:),bar(:),car(:)
CHARACTER(LEN=:),  ALLOCATABLE:: war(:),nar(:)
CHARACTER(LEN=:),  POINTER:: vsar,bsar,csar
CHARACTER(LEN=:),  ALLOCATABLE:: wsar,nsar

allocate(src,STAT = err)
src='fail'
allocate(bar(5),var(5),nar(5),car(5),war(5),bsar,vsar,nsar,csar,wsar, MOLD= src,STAT = err)

if( err .EQ. 0 ) then 
  if(len(var)==20) then
    if(size(var)==5) print *,'pass'
  else
    print*,501
  endif
  if(len(bar)==20) then
    if(size(bar)/=5) print *,201
  else
    print*,502
  endif
  if(len(nar)==20) then
    if(size(nar)/=5) print *,202
  else
    print*,503
  endif
  if(len(car)==20) then
    if(size(car)/=5) print *,203
  else
    print*,504
  endif
  if(len(war)==20) then
    if(size(war)/=5) print *,204
  else
    print*,505
  endif
  if(len(vsar)==20) then
  else
    print*,506
  endif
  if(len(bsar)==20) then
  else
    print*,507
  endif
  if(len(nsar)==20) then
  else
    print*,508
  endif
  if(len(csar)==20) then
  else
    print*,509
  endif
  if(len(wsar)==20) then
  else
    print*,510
  endif
else
  print *,101
  src="HELLO"
  print *, src
  vsar="HOW ARE YOU"
  print *, vsar 
  csar="HOW ARE YOU"
  print *, csar
  wsar="HOW ARE YOU"
  print *, wsar
  nsar="HOW ARE YOU"
  print *, nsar
  bsar="HOW ARE YOU"
  print *, bsar
  var="HOW ARE YOU"
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
