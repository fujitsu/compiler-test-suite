PROGRAM MAIN
IMPLICIT NONE
integer :: err
integer, allocatable :: src
integer,  POINTER:: vsar,bsar,csar
integer,  ALLOCATABLE:: wsar,nsar
integer,  POINTER:: var(:),bar(:),car(:)
integer,  ALLOCATABLE:: war(:),nar(:)

allocate(src,STAT = err)
src=801
allocate(bar(5),var(5),nar(5),car(5),war(5),bsar,vsar,nsar,csar,wsar, MOLD= src,STAT = err)

if( err .EQ. 0 ) then 
    if(size(var)==5) print *,'pass'
    if(size(bar)/=5) print *,201
    if(size(nar)/=5) print *,202
    if(size(car)/=5) print *,203
    if(size(war)/=5) print *,204
else
  print *,101
  src=802
  print *, src
  vsar=8031
  print *, vsar 
  csar=8041
  print *, csar
  wsar=8051
  print *, wsar
  nsar=8061
  print *, nsar
  bsar=8071
  print *, bsar
  var=803
  print *, var 
  car=804
  print *, car
  war=805
  print *, war
  nar=806
  print *, nar
  bar=807
  print *, bar
endif 
END PROGRAM MAIN
