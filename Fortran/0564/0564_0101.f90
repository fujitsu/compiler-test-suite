module mod1
type ty
integer,allocatable :: alc
character::msg
integer,allocatable :: alc2
end type

type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:)

contains
function fun ()
integer::fun

allocate(obj2(2))
allocate(obj1(3))

allocate(obj2(1)%alc)
allocate(obj2(2)%alc)
allocate(obj2(1)%alc2)
allocate(obj2(2)%alc2)

allocate(obj1(1)%alc)
allocate(obj1(2)%alc)
allocate(obj1(1)%alc2)
allocate(obj1(2)%alc2)

obj1(1)%alc = 7
obj1(2)%alc = 8
obj1(1)%alc2 = 9
obj1(2)%alc2 = 10

obj2(1)%alc = 4
obj2(2)%alc = 5
obj2(1)%alc2 = 6
obj2(2)%alc2 = 7

obj1 = obj2
if(size(obj1) /= 2) print*, 101
if(obj1(1)%alc /= 4) print*,102
if(obj1(2)%alc /= 5) print*,103
if(obj1(1)%alc2 /= 6) print*,104
if(obj1(2)%alc2 /= 7) print*,105
fun = 0
end function
end module

program main
USE mod1
integer::ii
type(ty),allocatable::obj3(:)

ii   = fun()

obj3 = obj1
if(size(obj3) /= 2) print*, 101
if(obj3(1)%alc /= 4) print*,102
if(obj3(2)%alc /= 5) print*,103
if(obj3(1)%alc2 /= 6) print*,104
if(obj3(2)%alc2 /= 7) print*,105
if(ii /= 0) print*, 911
print*, "PASS"
end
