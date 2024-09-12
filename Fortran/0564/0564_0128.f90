type ty
integer,allocatable :: alc(:)
integer,allocatable :: alc2
end type

type, EXTENDS(ty) :: tt
character(LEN=:),allocatable::msg
end type

type ts
type(tt),allocatable :: obj1(:,:)
class(tt),pointer :: obj2(:,:)
end type

type(ts) :: objTT, objTS

allocate(objTS%obj2(3,4))
allocate(objTT%obj1(2,3))

allocate(objTS%obj2(1,2)%alc(2))
allocate(objTS%obj2(2,2)%alc(2))
allocate(objTS%obj2(1,2)%alc2)
allocate(objTS%obj2(2,2)%alc2)
allocate(character(len=6)::objTS%obj2(3,2)%msg)

allocate(objTT%obj1(1,2)%alc(2))
allocate(objTT%obj1(2,1)%alc(3))
allocate(objTT%obj1(2,1)%alc2)
allocate(objTT%obj1(1,2)%alc2)
allocate(character(len=5)::objTT%obj1(2,3)%msg)

call sub(objTT%obj1, objTS%obj2)

contains
subroutine sub(obj1, obj2)
type(tt),allocatable :: obj1(:,:)
class(tt) :: obj2(:,:)

obj1(1,2)%alc = 7
obj1(2,1)%alc = 8
obj1(1,2)%alc2 = 9
obj1(2,1)%alc2 = 10
obj1(2,3)%msg = "WORLD"

obj2(1,2)%alc = 4
obj2(2,2)%alc   = 5
obj2(1,2)%alc2  = 6
obj2(2,2)%alc2  = 7
obj2(3,2)%msg   = "HELLO"

obj1 = obj2
if(size(obj1) /= 12) print*, 101
if(obj1(1,2)%alc(1) /= 4) print*,102
if(obj1(2,2)%alc(1) /= 5) print*,104
if(obj1(1,2)%alc2 /= 6) print*,106
if(obj1(2,2)%alc2 /= 7) print*,107
if(obj1(3,2)%msg /= "HELLO") print*,108
if(LEN(obj1(3,2)%msg) /= LEN(obj2(3,2)%msg)) print*,109, LEN(obj1(3,2)%msg)
print*, "PASS"
end subroutine
end
