type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

type tt
class(ty),allocatable :: obj1
end type

class(ty),allocatable :: obj3

type(tt)::objTT(2)
allocate(ts::objTT(1)%obj1)

allocate(objTT(1)%obj1%alc(3))
allocate(objTT(1)%obj1%alc2)

objTT(1)%obj1%alc = 7
objTT(1)%obj1%alc2 = 9
objTT(1)%obj1%msg = "WORLD"

objTT(1)%obj1 = fun()

obj3 = objTT(1)%obj1
 
if(size(obj3%alc) /= 2) print*, 101, size(obj3%alc)
if(obj3%alc(1) /= 4) print*,102
if(obj3%alc2 /= 6) print*,104
if(obj3%msg(2,2) /= "HELLO") print*,106

select type (x => objTT(1)%obj1)
type is (ts)
    print*, "PASS"
class default
        print*,"ERROR"
end select

contains
function fun ()
class(ty),pointer::fun

allocate(ts::fun)

allocate(fun%alc(2))
allocate(fun%alc2)

fun%alc = 4
fun%alc2 = 6
fun%msg = "HELLO"

return
end function
end
