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
ALLOCATE(objTT(2)%obj2(4,2))

objTT(2)%obj1(1,1)%jj=20
objTT(2)%obj1(2,2)%jj=30
objTT(2)%obj1(3,1)%jj=40

objTT(2)%obj2 = CSHIFT(objTT(2)%obj1,SHIFT= (/-1,1/))

if(size(objTT(2)%obj2) .ne. 6) print*,"121"
if(len(objTT(2)%obj2(1,1)%ch) .ne. 5) print*,"122"
IF(objTT(2)%obj2(1,1)%jj .EQ. 40 .AND. objTT(2)%obj2(2,1)%jj .EQ. 20 .AND. objTT(2)%obj2(3,1)%jj .EQ. 10 .AND. objTT(2)%obj2(1,2)%jj .EQ. 30 .AND. objTT(2)%obj2(2,2)%jj .EQ. 10) THEN
PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

