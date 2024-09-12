PROGRAM main
IMPLICIT NONE

TYPE ty
  INTEGER(kind =2) :: jj=10
  COMPLEX :: cmp(2)
  CHARACTER,allocatable :: ch
END TYPE

type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)

ALLOCATE(obj1(3,2))

obj1(1,1)%jj=20
obj1(2,2)%jj=30
obj1(3,1)%jj=40

obj2 = CSHIFT(obj1,SHIFT= (/-1,1/))

if(size(obj2) .ne. 6) print*,"121", size(obj2)
!if(sizeof(obj2) .ne. 240) print*,"122",sizeof(obj2)
print*,"Pass"

END PROGRAM

