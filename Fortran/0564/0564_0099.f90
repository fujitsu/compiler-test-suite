subroutine sub
type ty
integer,allocatable :: alc(:)
character(LEN=:),allocatable::msg(:,:)
integer,allocatable :: alc2
end type

type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)

allocate(obj1(2,3))
allocate(obj2(3,4))

allocate(obj2(1,2)%alc(2))
allocate(obj2(2,2)%alc(2))
allocate(obj2(1,2)%alc2)
allocate(obj2(2,2)%alc2)
allocate(character(len=5)::obj2(2,2)%msg(3,2))

allocate(obj1(1,2)%alc(2))
allocate(obj1(2,3)%alc(3))
allocate(obj1(1,2)%alc2)
allocate(obj1(2,3)%alc2)
allocate(character(len=5)::obj1(2,2)%msg(2,3))

obj1(1,2)%alc = 7
obj1(2,3)%alc = 8
obj1(1,2)%alc2 = 9
obj1(2,3)%alc2 = 10
obj1(2,2)%msg = "WORLD"

obj2(1,2)%alc = 4
obj2(2,2)%alc = 5
obj2(1,2)%alc2 = 6
obj2(2,2)%alc2 = 7
obj2(2,2)%msg = "HELLO"

obj1 = obj2
if(size(obj1) /= 12) print*, 101, size(obj1)
if(obj1(1,2)%alc(1) /= 4) print*,102
if(obj1(2,2)%alc(2) /= 5) print*,103
if(obj1(1,2)%alc2 /= 6) print*,104
if(obj1(2,2)%alc2 /= 7) print*,105
if(obj1(2,2)%msg(2,2) /= "HELLO") print*,106
print*, "PASS"
end subroutine

call sub
end
