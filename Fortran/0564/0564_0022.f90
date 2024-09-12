type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type, extends(ty)::ts
character,allocatable::msg2
end type

type tt
class(ty),allocatable :: obj1
end type

class(ty),allocatable :: obj3

type(tt)::objTT(2)

objTT(1)%obj1 = fun()
obj3          = objTT(1)%obj1
 
if(size(obj3%alc) /= 2) print*, 101, size(obj3%alc)
if(obj3%alc(1) /= 4) print*,102
if(obj3%alc2 /= 6) print*,104
if(obj3%msg(2,2) /= "HELLO") print*,106

select type (x => obj3)
type is (ts)
    if(x%msg2 /= "I") print*, 132
    print*, "PASS"
class default
        print*,"ERROR"
end select

contains
function fun ()
class(ts),pointer::fun

allocate(ts::fun)

allocate(fun%alc(2))
allocate(fun%alc2)

select type (fun)
type is (ts)
  allocate(fun%msg2)
  fun%msg2 = "I"
class default
    print*,"ERROR"
end select

fun%alc = 4
fun%alc2 = 6
fun%msg = "HELLO"

return
end function
end
