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

dmy1%msgTY = "abcde"

end subroutine
end

program main
use m1
call s(ty("HELLO"), tt("WORLD", "HAP"))
print*, "pass"
end
