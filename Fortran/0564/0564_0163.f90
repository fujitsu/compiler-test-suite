PROGRAM main
IMPLICIT NONE

TYPE ty
  integer,allocatable::xx
  INTEGER :: jj=10
END TYPE

type, EXTENDS(ty)::tn
end type

type tt
type(ty),allocatable :: obj1(:,:)
class(ty),allocatable :: obj2(:,:)
end type

type(tt)::objTT, objTS

ALLOCATE(objTT%obj1(3,2))
ALLOCATE(tn::objTS%obj2(4,2))

ALLOCATE(objTT%obj1(2,2)%xx)

objTT%obj1(2,2)%xx=33
objTT%obj1(1,1)%jj=20
objTT%obj1(2,2)%jj=30
objTT%obj1(3,1)%jj=40

objTS%obj2 = CSHIFT(objTT%obj1,SHIFT= (/-1,1/))

if(size(objTS%obj2) .ne. 6) print*,"121"
IF(objTS%obj2(1,1)%jj .EQ. 40 .AND. objTS%obj2(2,1)%jj .EQ. 20 .AND. objTS%obj2(3,1)%jj .EQ. 10 .AND. objTS%obj2(1,2)%jj .EQ. 30 .AND. objTS%obj2(2,2)%jj .EQ. 10) THEN
select type (x => objTS%obj2)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
ELSE
  PRINT*,"404"
END IF
END PROGRAM

