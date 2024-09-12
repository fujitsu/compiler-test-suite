type ty
integer,allocatable :: alc(:)
character(LEN=:),allocatable::msg
integer,allocatable :: alc2
end type

type(ty),allocatable :: obj1(:)
type(ty),pointer :: obj2(:)

allocate(obj2(3))
allocate(obj1(3))

allocate(obj2(1)%alc(2))
allocate(obj2(2)%alc(2))
allocate(obj2(1)%alc2)
allocate(obj2(2)%alc2)
allocate(character(len=6)::obj2(2)%msg)

allocate(obj1(1)%alc(2))
allocate(obj1(2)%alc(3))
allocate(obj1(1)%alc2)
allocate(obj1(2)%alc2)
allocate(character(len=5)::obj1(2)%msg)

obj1(1)%alc(1) = 7
obj1(1)%alc(2) = 11
obj1(2)%alc(1) = 8
obj1(2)%alc(2) = 12
obj1(1)%alc2 = 9
obj1(2)%alc2 = 10
obj1(2)%msg = "WORLD"

obj2(1)%alc(1) = 4
obj2(1)%alc(2) = 13
obj2(2)%alc(1) = 5
obj2(2)%alc(2) = 14
obj2(1)%alc2 = 6
obj2(2)%alc2 = 7
obj2(2)%msg = "HELLO"

obj1 = obj2
if(size(obj1) /= 3) print*, 101
if(obj1(1)%alc(1) /= 4) print*,102
if(obj1(1)%alc(2) /= 13) print*,102
if(obj1(2)%alc(1) /= 5) print*,103
if(obj1(2)%alc(2) /= 14) print*,103
if(obj1(1)%alc2 /= 6) print*,104
if(obj1(2)%alc2 /= 7) print*,105
if(obj1(2)%msg /= "HELLO") print*,106
if(LEN(obj1(2)%msg) /= LEN(obj2(2)%msg)) print*,107, LEN(obj1(2)%msg)
print*, "PASS"
end
