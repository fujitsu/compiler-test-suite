module m1
type ty
integer,allocatable :: alc
contains
procedure,nopass :: prc
final :: prc
end type

type, extends(ty)::ts
end type

contains
subroutine prc(dmy)
type(ty) :: dmy(:)

end subroutine
end module

use m1
class(ty),allocatable:: obj1(:)
class(ty),allocatable:: obj2(:)

allocate(obj1(2))
allocate(obj2(2))

allocate(obj2(1)%alc)
allocate(obj2(2)%alc)

allocate(obj1(1)%alc)

obj1(1)%alc = 6

obj2(1)%alc = 4
obj2(2)%alc = 5

obj1 = obj2
if(size(obj1) /= 2) print*, 101, size(obj1)
if(obj1(1)%alc /= 4) print*,102,obj1(1)%alc
if(obj1(2)%alc /= 5) print*,103,obj1(1)%alc

select type (obj1)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
