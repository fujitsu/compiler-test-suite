module m1
type::ty
integer,allocatable::yy(:,:)
end type

type,extends(ty)::tt
integer,allocatable::jj(:)
integer::tt
end type

contains
subroutine s(dmy)
class(tt),value :: dmy

select type (dmy)
type is(tt)
 if (size(dmy%yy) /= 6) print*, 201
 if (size(dmy%jj) /= 4) print*, 202
 if (all(dmy%yy /= 11)) print *,203
 if (all(dmy%jj /= 12)) print *,204
 if (dmy%tt /= 13) print *,205

 dmy%yy = 21
 dmy%jj = 22
 dmy%tt = 23

class default
 print*, 911
end select
end subroutine
end
    
program main
use m1
type(tt),allocatable::objTT

allocate(tt::objTT)
allocate(objTT%yy(2,3))
allocate(objTT%jj(4))

objTT%yy = 11
objTT%jj = 12
objTT%tt = 13

call s(objTT)

if (all(objTT%yy /= 11)) print *,101
if (all(objTT%jj /= 12)) print *,102
if (objTT%tt /= 13) print *,103
print*, "PASS"
end
