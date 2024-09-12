PROGRAM main
IMPLICIT NONE

TYPE ty
  integer,allocatable::xx
  INTEGER :: jj=10
END TYPE

type, EXTENDS(ty)::tn
end type

type tt
class(ty),allocatable :: obj1(:,:)
class(ty),allocatable :: obj2(:,:)
end type

type(tt)::objTS(2), objTT(2)

ALLOCATE(objTT(2)%obj1(3,2))
ALLOCATE(tn::objTS(2)%obj2(4,2))

ALLOCATE(objTT(2)%obj1(2,2)%xx)

objTT(2)%obj1(2,2)%xx=33
objTT(2)%obj1(1,1)%jj=20
objTT(2)%obj1(2,2)%jj=30
objTT(2)%obj1(3,1)%jj=40

objTS(2)%obj2 = TRANSPOSE(objTT(2)%obj1)
if((ubound(objTS(2)%obj2, 1) /=2) .AND. (ubound(objTS(2)%obj2, 2) /=3)) print*,"120" 
if(size(objTS(2)%obj2) .ne. 6) print*,"121"
IF(objTS(2)%obj2(1,1)%jj .EQ. 20 .AND. objTS(2)%obj2(2,1)%jj .EQ. 10 .AND. objTS(2)%obj2(1,3)%jj .EQ. 40 .AND. objTS(2)%obj2(1,2)%jj .EQ. 10 .AND. objTS(2)%obj2(2,2)%jj .EQ. 30) THEN
select type (x => objTS(2)%obj2)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

