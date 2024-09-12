module mod1
type ty
integer,allocatable :: alc(:)
end type

type tt
type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:)
end type

type(tt)::objTS, objTT

contains
function fun ()
allocate(objTT%obj1(2))
allocate(objTT%obj1(1)%alc(2))
allocate(objTT%obj1(2)%alc(2))

objTT%obj1(1)%alc = 1
objTT%obj1(2)%alc = 2

allocate(objTS%obj2(3))
allocate(objTS%obj2(1)%alc(2))
allocate(objTS%obj2(2)%alc(2))
allocate(objTS%obj2(3)%alc(2))

objTS%obj2(1)%alc = 3
objTS%obj2(2)%alc = 4
objTS%obj2(3)%alc = 5

objTT%obj1 = objTS%obj2
if(.NOT.ALLOCATED(objTT%obj1)) print*, 121
if(size(objTT%obj1) /= 3) print*, 101, size(objTT%obj1), size(objTS%obj2)
if(objTT%obj1(1)%alc(1) /= 3) print*,102, objTT%obj1(1)%alc(1)
if(objTT%obj1(2)%alc(2) /= 4) print*,103, objTT%obj1(2)%alc(2)
if(objTT%obj1(3)%alc(2) /= 5) print*,104, objTT%obj1(3)%alc(2)
fun=0
end function
end module

program main
USE mod1
type(ty),allocatable::obj3(:)
integer::ii

ii   = fun()

obj3 = objTS%obj2
if(.NOT.ALLOCATED(obj3)) print*, 131
if(size(obj3) /= 3) print*, 141, size(obj3)
if(obj3(1)%alc(1) /= 3) print*,142, obj3(1)%alc(1)
if(obj3(2)%alc(2) /= 4) print*,143, obj3(2)%alc(2)
if(obj3(3)%alc(2) /= 5) print*,144, obj3(3)%alc(2)
if (ii == 0) print*, "PASS"
end
