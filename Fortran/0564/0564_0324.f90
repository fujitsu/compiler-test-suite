type ty
integer:: alc
end type

type,extends(ty):: tt
integer:: alc2
end type

type ts
class(ty),allocatable :: obj1(:)
type(tt):: obj2(2)
end type

type(ts):: objTT, objTS

allocate(objTS%obj1(3))

objTS%obj2(1)%alc = 4
objTS%obj2(2)%alc = 5
objTS%obj2(1)%alc2 = 6
objTS%obj2(2)%alc2 = 7

objTT%obj1 = objTS%obj2
if(size(objTT%obj1) /= 2) print*, 101, size(objTT%obj1)
if(objTT%obj1(1)%alc /= 4) print*,102, objTT%obj1(1)%alc
if(objTT%obj1(2)%alc /= 5) print*,103, objTT%obj1(1)%alc

select type(x => objTT%obj1)
    type is(tt)
        if(x(1)%alc2 .ne. 6) print*,"121"
        if(x(2)%alc2 .ne. 7) print*,"122"
        print*, "PASS"
    class default
         print*,"125"
end select
end
