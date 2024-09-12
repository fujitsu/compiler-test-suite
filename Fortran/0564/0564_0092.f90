function fun ()
type ty
integer,allocatable :: alc(:)
character(LEN=:),allocatable::msg(:,:)
integer,allocatable :: alc2
end type

type(ty),allocatable :: obj1(:,:)
type(ty),pointer :: obj2(:,:)

allocate(obj1(3,4))
allocate(obj2(3,5))

allocate(obj2(1,1)%alc(2))
allocate(obj2(2,3)%alc(2))
allocate(obj2(1,1)%alc2)
allocate(obj2(2,3)%alc2)
allocate(character(len=5)::obj2(2,3)%msg(3,2))

allocate(obj1(1,2)%alc(2))
allocate(obj1(2,3)%alc(3))
allocate(obj1(1,2)%alc2)
allocate(obj1(2,3)%alc2)
allocate(character(len=6)::obj1(2,2)%msg(2,3))

obj1(1,2)%alc = 7
obj1(2,3)%alc = 8
obj1(1,2)%alc2 = 9
obj1(2,3)%alc2 = 10
obj1(2,2)%msg = "WORLD"

obj2(1,1)%alc = 4
obj2(2,3)%alc = 5
obj2(1,1)%alc2 = 6
obj2(2,3)%alc2 = 1
obj2(2,3)%msg = "HELLO"

obj1 = obj2(1:3,1:5:2)

if(size(obj1) /= 9) print*, 101, size(obj1)
if(obj1(1,1)%alc(1) /= 4) print*,102
if(obj1(2,2)%alc(2) /= 5) print*,103
if(obj1(1,1)%alc2 /= 6) print*,104
if(obj1(2,2)%alc2 /= 1) print*,105
if(obj1(2,2)%msg(2,2) /= "HELLO") print*,106
if(LEN(obj1(2,2)%msg(2,2)) /= 5) print*,107
fun  = 0
end function

integer::ii
ii = fun()
if (ii /= 0) print*, 911
print*, "PASS"
end
