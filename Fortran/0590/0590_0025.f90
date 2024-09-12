module m1
type::ty
character(:), allocatable :: msg(:)
integer,allocatable :: yy
end type

type,extends(ty)::tt
integer,allocatable::tt
end type

contains
subroutine s(dmy)
class(ty),value :: dmy(:,:)

select type (dmy)
type is(tt)
 if (dmy(2,3)%yy /= 11) print *,201
 if (dmy(3,4)%yy /= 12) print *,202
 if (dmy(1,2)%tt /= 13) print *,103
 if (dmy(2,4)%tt /= 14) print *,104

 dmy(2,3)%yy = 21
 dmy(3,4)%yy = 22
 dmy(1,2)%tt = 23
 dmy(2,4)%tt = 24

class default
 print*, "911"
end select
end subroutine
end
    
program main
use m1
type(tt),allocatable :: objTT(:,:)

allocate(objTT(3,4))

allocate(objTT(2,3)%yy)
allocate(objTT(3,4)%yy)
allocate(objTT(1,2)%tt)
allocate(objTT(2,4)%tt)

objTT(2,3)%yy = 11
objTT(3,4)%yy = 12
objTT(1,2)%tt = 13
objTT(2,4)%tt = 14

call s(objTT)

if (objTT(2,3)%yy /= 11) print *,101
if (objTT(3,4)%yy /= 12) print *,102
if (objTT(1,2)%tt /= 13) print *,103
if (objTT(2,4)%tt /= 14) print *,104

print*, "PASS"
end
