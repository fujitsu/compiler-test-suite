PROGRAM main
IMPLICIT NONE

TYPE ty
  COMPLEX :: cmp(4)
  INTEGER :: jj=10
END TYPE

type, extends(ty)::ts
  CHARACTER(LEN=:),allocatable :: ch
end type

class(ty),allocatable :: obj2(:)
type(ts):: obj1(10)
integer :: ii,jj

allocate(character(len=4)::obj1(2)%ch)
allocate(character(len=5)::obj1(3)%ch)
allocate(ty::obj2(3))

obj1(1)%jj=10
obj1(2)%jj=20
obj1(3)%jj=30
obj1(4)%jj=40
obj1(5)%jj=50
obj1(6)%jj=60
obj1(7)%jj=70
obj1(8)%jj=80
obj1(9)%jj=90

obj1(2)%ch = "AAAA"
obj1(3)%ch = "BBBBB"

obj2 = (/((obj1(ii+jj),ii=1,3),jj=1,3)/)
if(size(obj2) .ne. 9) print*,"121", size(obj2)
if(sizeof(obj2) .ne. 324 .and. sizeof(obj2) .ne. 504) print*,"122",sizeof(obj2)
IF(obj2(1)%jj .EQ. 20 .AND. obj2(3)%jj .EQ. 40 .AND. obj2(4)%jj .EQ. 30) THEN
ELSE
  PRINT*,"911", obj2(1)%jj, obj2(3)%jj, obj2(4)%jj
END IF

select type (obj2)
type is (ts)
 if(obj2(1)%ch /= "AAAA") print*, 201
 if(obj2(4)%ch /= "BBBBB") print*, 202
 if(len(obj2(1)%ch) /= 4) print*, 203
 if(len(obj2(4)%ch) /= 5) print*, 204
 print*, "PASS"
class default
 print*,"ERROR"
end select
END PROGRAM
