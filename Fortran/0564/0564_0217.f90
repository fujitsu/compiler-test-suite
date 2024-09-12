type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

type tt
class(ty),allocatable :: obj1(:,:)
end type

type(tt)::objTT
allocate(ts::objTT%obj1(2,3))

allocate(objTT%obj1(1,2)%alc(2))
allocate(objTT%obj1(2,3)%alc(3))
allocate(objTT%obj1(1,2)%alc2)
allocate(objTT%obj1(2,3)%alc2)

objTT%obj1(1,2)%alc = 7
objTT%obj1(2,3)%alc = 8
objTT%obj1(1,2)%alc2 = 9
objTT%obj1(2,3)%alc2 = 10
objTT%obj1(2,2)%msg = "WORLD"

objTT%obj1 = fun()
 
if(size(objTT%obj1) /= 12) print*, 101, size(objTT%obj1)
if(objTT%obj1(1,2)%alc(1) /= 4) print*,102
if(objTT%obj1(2,2)%alc(2) /= 5) print*,103
if(objTT%obj1(1,2)%alc2 /= 6) print*,104
if(objTT%obj1(2,2)%alc2 /= 7) print*,105
if(objTT%obj1(2,2)%msg(2,2) /= "HELLO") print*,106

select type (x => objTT%obj1)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select

contains
function fun ()
class(ty),allocatable::fun(:,:)
class(ty),allocatable::obj2(:,:)

allocate(ts::fun(2,3))
allocate(obj2(3,4))

allocate(obj2(1,2)%alc(2))
allocate(obj2(2,2)%alc(2))
allocate(obj2(1,2)%alc2)
allocate(obj2(2,2)%alc2)

obj2(1,2)%alc = 4
obj2(2,2)%alc = 5
obj2(1,2)%alc2 = 6
obj2(2,2)%alc2 = 7
obj2(2,2)%msg = "HELLO"

fun = obj2
if(size(fun) /= 12) print*, 121, size(fun)
if(fun(1,2)%alc(1) /= 4) print*,122
if(fun(2,2)%alc(2) /= 5) print*,123
if(fun(1,2)%alc2 /= 6) print*,124
if(fun(2,2)%alc2 /= 7) print*,125
if(fun(2,2)%msg(2,2) /= "HELLO") print*,126
end function
end