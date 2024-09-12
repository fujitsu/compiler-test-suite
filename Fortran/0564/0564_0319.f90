type ty
integer:: alc
end type

type,extends(ty):: tt
integer:: alc2
end type

class(ty),allocatable :: obj1(:)
type(tt):: obj2(3)

obj2(1)%alc = 4
obj2(2)%alc = 5
obj2(1)%alc2 = 6
obj2(2)%alc2 = 7

obj1 = obj2

if(size(obj1) /= 3) print*, 101, size(obj1)
if(obj1(1)%alc /= 4) print*,102, obj1(1)%alc
if(obj1(2)%alc /= 5) print*,103, obj1(2)%alc

select type(x => obj1)
    type is(tt)
        if(x(1)%alc2 .ne. 6) print*,"121"
        if(x(2)%alc2 .ne. 7) print*,"122"
        print*, "PASS"
    class default
         print*,"125"
end select
end
