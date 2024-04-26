PROGRAM MAIN
  IMPLICIT NONE
  integer, allocatable :: src
  integer,  POINTER:: vsar,bsar,csar
  integer,  ALLOCATABLE:: wsar,nsar
  integer,  POINTER:: var(:),bar(:),car(:)
  integer,  ALLOCATABLE:: war(:),nar(:)

  allocate(src)
  src=801
  allocate(bar(5),var(5),nar(5),car(5),war(5),bsar,vsar,nsar,csar,wsar, MOLD= src)

  if(size(var)==5) print *,'pass'
  if(size(bar)/=5) print *,201
  if(size(nar)/=5) print *,202
  if(size(car)/=5) print *,203
  if(size(war)/=5) print *,204
  vsar=8031
  csar=8041
  wsar=8051
  nsar=8061
  bsar=8071
  var=803
  car=804
  war=805
  nar=806
  bar=807
END PROGRAM MAIN
