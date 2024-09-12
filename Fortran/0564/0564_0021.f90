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

type(ty),allocatable :: obj3

type(tt)::objTT
allocate(objTT%obj1)

allocate(objTT%obj1%alc(3))
allocate(objTT%obj1%alc2)

objTT%obj1%alc = 7
objTT%obj1%alc2 = 9
objTT%obj1%msg = "WORLD"

objTT%obj1 = fun()
obj3 = objTT%obj1
 
if(size(obj3%alc) /= 2) print*, 101, size(obj3%alc)
if(obj3%alc(1) /= 4) print*,102
if(obj3%alc2 /= 6) print*,104
if(obj3%msg(2,2) /= "HELLO") print*,106

select type (x => objTT%obj1)
type is (ts)
    print*, "PASS"
class default
        print*,"ERROR"
end select

contains
function fun ()
class(ty),allocatable::fun
type(ts)::obj2(3,4)

allocate(ts::fun)

allocate(obj2(1,2)%alc(2))
allocate(obj2(1,2)%alc2)

obj2(1,2)%alc = 4
obj2(1,2)%alc2 = 6
obj2(1,2)%msg = "HELLO"

fun = obj2(1,2)
select type (x => fun)
type is (ts)
  if(size(fun%alc) /= 2) print*, 121, size(fun%alc)
  if(fun%alc(1) /= 4) print*,122
  if(fun%alc2 /= 6) print*,124
  if(fun%msg(2,2) /= "HELLO") print*,126
class default
        print*,"ERROR"
end select
end function
end
