module m1
type::ty
character(len=5)::msgTY
end type

type,extends(ty)::tt
character(len=4)::msgTT
end type

contains
subroutine s(dmy1,dmy2)
class(ty),value :: dmy1
class(* ),value :: dmy2

if (dmy1%msgTY /= "HELLO") print *,201, dmy1%msgTY
dmy1%msgTY = "abcde"

select type (dmy2)
type is (ty)
 if (dmy2%msgTY /= "HELLO") print *,202, dmy2%msgTY
 dmy2%msgTY = "abcde"

type is(tt)
 if (dmy2%msgTY /= "WORLD") print *,203, dmy2%msgTY
 if (dmy2%msgTT /= "HAPP") print *,204, dmy2%msgTT
 dmy2%msgTY = "54321"
 dmy2%msgTT = "12345"

class default
 print*, 911
end select
end subroutine
end

program main
use m1
type(ty)::objTY
type(tt):: objTT

objTY%msgTY = "HELLO"
objTT%msgTY = "WORLD"
objTT%msgTT = "HAPP"

call s(objTY,objTT)

if (objTY%msgTY /= "HELLO") print *,101, objTY%msgTY
if (objTT%msgTY /= "WORLD") print *,102, objTT%msgTY
if (objTT%msgTT /= "HAPP") print *,102, objTT%msgTT

print*, "pass"
end
