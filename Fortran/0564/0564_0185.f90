module mod1
type ty
integer,allocatable :: alc
character::msg
integer,allocatable :: alc2
end type

type, extends(ty)::ts
 integer, allocatable :: a
end type

class(ty),allocatable :: obj1(:)
class(ty),pointer :: obj2(:)

contains
function fun ()
integer::fun

allocate(obj1(3))
allocate(ts::obj2(2))

allocate(obj2(1)%alc)
allocate(obj2(2)%alc)
allocate(obj2(1)%alc2)
allocate(obj2(2)%alc2)

allocate(obj1(1)%alc)
allocate(obj1(2)%alc)
allocate(obj1(1)%alc2)
allocate(obj1(2)%alc2)

select type(obj2)
type is (ts)
    allocate(obj2(1)%a)
    allocate(obj2(2)%a)
    obj2(1)%a=3
    obj2(2)%a=5
class default
 print*,201
end select

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
type is (ts)
    fun = 0
    if(obj1(1)%a .ne. 3) print*, 202
    if(obj1(2)%a .ne. 5) print*, 203
class default
    fun = 1
end select

end function
end module

program main
USE mod1
integer::ii
class(ty),allocatable::obj3(:)

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
type is (ts)
    if(obj3(1)%a .ne. 3) print*, 204
    if(obj3(2)%a .ne. 5) print*, 205
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
