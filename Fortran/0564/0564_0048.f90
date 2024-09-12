PROGRAM main
IMPLICIT NONE

TYPE ty
  COMPLEX :: cmp(2)
  CHARACTER(LEN = 5) :: ch
  INTEGER :: jj=10
END TYPE

type tt
type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:)
end type
logical::obj_msk(6)
integer,allocatable ::ii
type(tt)::objTT(2)

ALLOCATE(objTT(2)%obj1(6))
ALLOCATE(objTT(2)%obj2(8))
allocate(ii)
ii = 2
obj_msk=.true.
obj_msk(2)=.false.
obj_msk(4)=.false.

objTT(2)%obj1(1)%jj=20
objTT(2)%obj1(2)%jj=30
objTT(2)%obj1(3)%jj=40

objTT(ii)%obj2 = PACK(objTT(2)%obj1,obj_msk)
if(len(objTT(2)%obj2(1)%ch) .ne. 5) print*,"122"
IF(objTT(2)%obj2(1)%jj .EQ. 20 .AND. objTT(2)%obj2(2)%jj .EQ. 40 .AND. objTT(2)%obj2(3)%jj .EQ. 10 .AND. objTT(2)%obj2(4)%jj .EQ. 10)THEN
PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

