type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)
end type

type(tt)::objTT

objTT%obj1 = fun()

if(size(objTT%obj1) /= 12) print*, 101
if(objTT%obj1(1,2)%alc(1) /= 4) print*,102
if(objTT%obj1(2,2)%alc(2) /= 5) print*,103
if(objTT%obj1(1,2)%alc2 /= 6) print*,104
if(objTT%obj1(2,2)%alc2 /= 7) print*,105
if(objTT%obj1(2,2)%msg(2,2) /= "HELLO") print*,106
print*, "PASS"

contains
function fun ()
type(ty),allocatable::fun(:,:)
type(tt)::objTS

allocate(fun(3,3))
allocate(fun(1,2)%alc(2))
allocate(fun(2,2)%alc(2))
allocate(fun(1,2)%alc2)
allocate(fun(2,2)%alc2)

fun(1,2)%alc = 1
fun(2,2)%alc = 2
fun(1,2)%alc2 = 3
fun(2,2)%alc2 = 8
fun(2,2)%msg = "WORLD"

allocate(objTS%obj2(3,4))
allocate(objTS%obj2(1,2)%alc(2))
allocate(objTS%obj2(2,2)%alc(2))
allocate(objTS%obj2(1,2)%alc2)
allocate(objTS%obj2(2,2)%alc2)

objTS%obj2(1,2)%alc = 4
objTS%obj2(2,2)%alc = 5
objTS%obj2(1,2)%alc2 = 6
objTS%obj2(2,2)%alc2 = 7
objTS%obj2(2,2)%msg = "HELLO"

fun = objTS%obj2
end function
end
