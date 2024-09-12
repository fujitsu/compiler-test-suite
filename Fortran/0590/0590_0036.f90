module m1
type::ty
character(len=5)::msgTY
end type

type,extends(ty)::tt
character(len=3)::msgTT
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
 if (dmy2%msgTT /= "HAP") print *,204, dmy2%msgTT
 dmy2%msgTY = "54321"
 dmy2%msgTT = "123"

class default
 print*, 911
end select
end subroutine
end
    
program main
use m1
call s(ty("HELLO"), tt("WORLD", "HAP"))
print*, "PASS"
end
