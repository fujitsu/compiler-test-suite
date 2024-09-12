module mod1
type ty
integer,allocatable :: alc
character::msg
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

class(ty),allocatable :: obj1(:)
type(ty),pointer :: obj2(:)

contains
function fun ()
integer::fun

allocate(ts::obj1(3))
allocate(obj2(2))

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

select type (obj1)
type is (ty)
    fun = 0
class default
    fun = 1
end select

end function
end module

program main
USE mod1
integer::ii
class(ty),allocatable::obj3(:)

allocate(ts::obj3(5))

ii = fun()
if(ii /= 0) print*, 911

obj3 = obj1
if(size(obj3) /= 2) print*, 121
if(obj3(1)%alc /= 4) print*,122
if(obj3(2)%alc /= 5) print*,123
if(obj3(1)%alc2 /= 6) print*,124
if(obj3(2)%alc2 /= 7) print*,125
if(ii /= 0) print*, 911

select type (obj3)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
