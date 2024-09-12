type ty
  integer,allocatable :: alc(:)
  character(LEN=5)::msg(3,2)
  integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:,:)
end type

type(tt)::objTT
allocate(objTT%obj1(2,3))

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
print*, "PASS"

contains
function fun ()

type(ty)::fun(3,4)

allocate(fun(1,2)%alc(2))
allocate(fun(2,2)%alc(2))
allocate(fun(1,2)%alc2)
allocate(fun(2,2)%alc2)

fun(1,2)%alc = 4
fun(2,2)%alc = 5
fun(1,2)%alc2 = 6
fun(2,2)%alc2 = 7
fun(2,2)%msg = "HELLO"
return
end function
end

