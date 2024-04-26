PROGRAM MAIN
IMPLICIT NONE
character(LEN=20), allocatable :: src
CHARACTER(LEN=:),  POINTER:: var(:),bar(:),car(:)
CHARACTER(LEN=:),  ALLOCATABLE:: war(:),nar(:)
CHARACTER(LEN=:),  POINTER:: vsar,bsar,csar
CHARACTER(LEN=:),  ALLOCATABLE:: wsar,nsar

allocate(src)
src='fail'
allocate(bar(5),var(5),nar(5),car(5),war(5),bsar,vsar,nsar,csar,wsar, MOLD= src)

  if(len(var)==20) then
    if(size(var)==5) print *,'pass'
    var='var'
  else
    print*,510
  endif
  if(len(bar)==20) then
    if(size(bar)/=5) print *,201
    bar='var'
  else
    print*,509
  endif
  if(len(nar)==20) then
    if(size(nar)/=5) print *,202
    nar='var'
  else
    print*,508
  endif
  if(len(car)==20) then
    if(size(car)/=5) print *,203
    car='var'
  else
    print*,507
  endif
  if(len(war)==20) then
    if(size(war)/=5) print *,204
    war='var'
  else
    print*,506
  endif
  if(len(vsar)==20) then
    vsar='var'
  else
    print*,505
  endif
  if(len(bsar)==20) then
    bsar='var'
  else
    print*,504
  endif
  if(len(nsar)==20) then
    nsar='var'
  else
    print*,503
  endif
  if(len(csar)==20) then
    csar='var'
  else
    print*,502
  endif
  if(len(wsar)==20) then
    wsar='var'
  else
    print*,501
  endif
END PROGRAM MAIN
