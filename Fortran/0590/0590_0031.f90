module m1
type::ty
integer::msgTY
end type

type,extends(ty)::tt
integer::msgTT
end type

contains
subroutine s(dmy)
class(ty),value :: dmy(:)

select type (dmy)
 type is(tt)
  if (size(dmy) /= 5) print *,401
  if (all(dmy%msgTY /= 11)) print *,402
  if (all(dmy%msgTT /= 12)) print *,403
 
  dmy%msgTY = 21
  dmy%msgTT = 22
 
 class default
  print*, "911"
end select
end subroutine
end
    
program main
use m1
type(tt),pointer::objTT(:)

allocate(objTT(10))

objTT%msgTY = 11
objTT%msgTT = 12

call s(objTT(1:10:2))
if (all(objTT%msgTY /= 11)) print *,101
if (all(objTT%msgTT /= 12)) print *,102

print*, "PASS"
end
