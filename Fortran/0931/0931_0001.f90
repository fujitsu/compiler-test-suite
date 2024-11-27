module m1
type tt
integer,allocatable :: ii(:)
contains
final::dest
end type

type ts
integer,allocatable :: ii(:)
type(tt) :: objTT
end type

type ty
integer,allocatable :: ii(:)
type(ts) :: objTS
end type

type(ty),target :: trg

contains
subroutine dest (this)
type(tt)::this
 deallocate(this%ii)
print*,"IN DEST"
end

function fun()
type(ty),pointer :: fun

fun => trg
end function
end module

use m1
type(ty) :: pobj
type(ty) :: obj

allocate(trg%ii(2))
allocate(obj%objTS%objTT%ii(3))
allocate(pobj%ii(4))

trg%ii = (/100,200/)
obj%objTS%objTT%ii = (/101,201,301/)
pobj%ii = (/11,12,13,14/)

fun() = pobj

pobj%ii = (/21,22,23,24/)

if(trg%ii(1) /= 11) print*,101
if(trg%ii(4) /= 14) print*,102
if(size(trg%ii) /= 4) print *,103
print*,"PASS"
end
