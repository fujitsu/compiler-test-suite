PROGRAM MAIN
IMPLICIT NONE
integer :: err
integer, allocatable :: src(:)
integer,  POINTER:: var(:),bar(:),car(:)
integer,  ALLOCATABLE:: war(:),nar(:)

allocate(src(5),STAT = err)
src=801
allocate(bar,var,nar,car,war, MOLD= src,STAT = err)

if( err .EQ. 0 ) then 
    if(size(var)==5) print *,'pass'
    if(size(bar)/=5) print *,201
    if(size(nar)/=5) print *,202
    if(size(car)/=5) print *,203
    if(size(war)/=5) print *,204
else
  print *,101
  src=802
  var=803
  print *, src
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
