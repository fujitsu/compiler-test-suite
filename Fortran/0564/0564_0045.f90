PROGRAM main
IMPLICIT NONE

TYPE ty
  COMPLEX :: cmp(2)
  CHARACTER(LEN = 5) :: ch
  INTEGER :: jj=10
END TYPE

type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)

ALLOCATE(obj1(3,2))
ALLOCATE(obj2(4,2))

obj1(1,1)%jj=20
obj1(2,2)%jj=30
obj1(3,1)%jj=40

obj2 = CSHIFT(obj1,SHIFT= (/-1,1/))

if(size(obj2) .ne. 6) print*,"121"
if(len(obj2(1,1)%ch) .ne. 5) print*,"123"
IF(obj2(1,1)%jj .EQ. 40 .AND. obj2(2,1)%jj .EQ. 20 .AND. obj2(3,1)%jj .EQ. 10 .AND. obj2(1,2)%jj .EQ. 30 .AND. obj2(2,2)%jj .EQ. 10) THEN
PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

