PROGRAM main
IMPLICIT NONE

TYPE ty
  COMPLEX :: cmp(2)
  CHARACTER(LEN = 5) :: ch
  INTEGER :: jj=10
END TYPE

type tt
type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:,:)
end type

integer ::ii
type(tt)::objTT(2)

ALLOCATE(objTT(2)%obj1(5))

ii = 2

objTT(2)%obj1(1)%jj=20
objTT(2)%obj1(2)%jj=30
objTT(2)%obj1(3)%jj=40

call sub (objTT(2)%obj1, objTT(ii)%obj2)

contains
subroutine sub(obj1, obj2)
type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:,:)

obj2 = SPREAD(obj1,1,3)

if(size(obj2) .ne. 15) print*,"121"
if(len(obj2(1,1)%ch) .ne. 5) print*,"122"
if((ubound(obj2,1)/=3) .AND. (ubound(obj2,2) /= 5)) print*,"123"

IF(obj2(1,1)%jj .EQ. 20 .AND. obj2(2,2)%jj .EQ. 30 .AND. obj2(3,3)%jj .EQ. 40 .AND. obj2(2,4)%jj .EQ. 10 .AND. obj2(3,5)%jj .EQ. 10) THEN
PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
end subroutine
END PROGRAM

