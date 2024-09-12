PROGRAM main
IMPLICIT NONE
 
TYPE ty
  integer::jj=10
  integer,allocatable::xx
END TYPE
 
type, extends(ty)::tn
end type

type ts
class(ty),allocatable :: obj2(:,:)
class(ty),allocatable :: obj1(:,:)
end type

type(ts):: objTT, objTS
ALLOCATE(objTT%obj1(3,3))
ALLOCATE(tn::objTS%obj2(4,2))

ALLOCATE(objTT%obj1(2,2)%xx) 

objTT%obj1(2,3)%xx=33
objTT%obj1(1,1)%jj=20
objTT%obj1(2,2)%jj=30
objTT%obj1(3,1)%jj=40
 
objTS%obj2 = TRANSPOSE(objTT%obj1)
if(size(objTS%obj2) /= 9) print*, 111
if(objTS%obj2(3,2)%xx .ne. 33) print*,"123"
IF(objTS%obj2(1,1)%jj .EQ. 20 .AND. objTS%obj2(2,1)%jj .EQ. 10 .AND. objTS%obj2(1,3)%jj .EQ. 40 .AND. objTS%obj2(1,2)%jj .EQ. 10 .AND. objTS%obj2(2,2)%jj.EQ.30)THEN
select type (x => objTS%obj2)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM
