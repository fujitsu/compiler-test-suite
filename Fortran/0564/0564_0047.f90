PROGRAM main
IMPLICIT NONE

TYPE ty
  COMPLEX :: cmp(2)
  CHARACTER(LEN = 5) :: ch
  INTEGER :: jj=10
END TYPE

type tt
type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)
end type

type(tt)::objTT(2)

ALLOCATE(objTT(2)%obj1(3,2))

objTT(2)%obj1(1,1)%jj=20
objTT(2)%obj1(2,2)%jj=30
objTT(2)%obj1(3,1)%jj=40

objTT(2)%obj2 = RESHAPE(objTT(2)%obj1,[2,3])
if((ubound(objTT(2)%obj2, 1) /=2) .AND. (ubound(objTT(2)%obj2, 2) /=3)) print*,"120"
if(size(objTT(2)%obj2) .ne. 6) print*,"121"
if(sizeof(objTT(2)%obj2) .ne. sizeof(objTT(2)%obj1)) print*,"122", sizeof(objTT(2)%obj2), sizeof(objTT(2)%obj1)
if(len(objTT(2)%obj2(1,1)%ch) .ne. 5) print*,"123"
IF(objTT(2)%obj2(1,1)%jj .EQ. 20 .AND. objTT(2)%obj2(2,1)%jj .EQ. 10 .AND. objTT(2)%obj2(1,2)%jj .EQ. 40 .AND. objTT(2)%obj2(2,2)%jj .EQ. 10 .AND. objTT(2)%obj2(1,3)%jj .EQ. 30) THEN
PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

