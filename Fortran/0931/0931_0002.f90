module m1
type tt
integer,allocatable :: ii(:)
contains
final::dest
end type

type ts
integer,allocatable :: ii(:)
type(tt) :: objTT

contains
procedure,nopass::fun
end type

type ty
integer,allocatable :: ii(:)
type(ts) :: objTS
end type

type(ts),target :: trg

contains
subroutine dest (this)
type(tt)::this
 deallocate(this%ii)
print*,"IN DEST"
end

function fun()
type(ts),pointer :: fun

fun => trg
end function
end module

use m1
type(ts) :: pobj
type(ty) :: obj(2)

allocate(trg%ii(2))
allocate(obj(2)%objTS%objTT%ii(3))
allocate(pobj%ii(4))

trg%ii = (/100,200/)
obj(2)%objTS%objTT%ii = (/101,201,301/)
pobj%ii = (/11,12,13,14/)

obj(2)%objTS%fun() = pobj

pobj%ii = (/21,22,23,24/)

if(trg%ii(1) /= 11) print*,101
if(trg%ii(4) /= 14) print*,102
if(size(trg%ii) /= 4) print *,103
print*,"PASS"
end
