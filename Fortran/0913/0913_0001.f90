PROGRAM main
IMPLICIT NONE

TYPE ty
  COMPLEX :: cmp(4)
  INTEGER :: jj=10
  CHARACTER(LEN=:),allocatable :: ch
END TYPE

type tt
type(ty),allocatable :: obj2(:)
type(ty):: obj1(10)
end type

integer :: ii,jj
type(tt) :: objTT(2)

allocate(character(len=4)::objTT(1)%obj1(2)%ch)
allocate(character(len=5)::objTT(1)%obj1(3)%ch)
allocate(objTT(2)%obj2(3))

objTT(1)%obj1(1)%jj=10
objTT(1)%obj1(2)%jj=20
objTT(1)%obj1(3)%jj=30
objTT(1)%obj1(4)%jj=40
objTT(1)%obj1(5)%jj=50
objTT(1)%obj1(6)%jj=60
objTT(1)%obj1(7)%jj=70
objTT(1)%obj1(8)%jj=80
objTT(1)%obj1(9)%jj=90

objTT(1)%obj1(2)%ch = "AAAA"
objTT(1)%obj1(3)%ch = "BBBBB"

objTT(2)%obj2 = (/((objTT(1)%obj1(ii+jj),ii=1,3),jj=1,3)/)
if(size(objTT(2)%obj2) .ne. 9) print*,"121", size(objTT(2)%obj2)
IF(objTT(2)%obj2(1)%jj .EQ. 20 .AND. objTT(2)%obj2(3)%jj .EQ. 40 .AND. objTT(2)%obj2(4)%jj .EQ. 30) THEN
ELSE
  PRINT*,"911", objTT(2)%obj2(1)%jj, objTT(2)%obj2(3)%jj, objTT(2)%obj2(4)%jj
END IF

if(objTT(2)%obj2(1)%ch /= "AAAA") print*, 201
if(objTT(2)%obj2(4)%ch /= "BBBBB") print*, 202
if(len(objTT(2)%obj2(1)%ch) /= 4) print*, 203
if(len(objTT(2)%obj2(4)%ch) /= 5) print*, 204
print*, "PASS"
END PROGRAM
