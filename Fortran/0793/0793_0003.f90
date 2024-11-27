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
class(ty),value :: dmy2

dmy1%msgTY = "abcde"
dmy2%msgTY = "abcde"
end subroutine

subroutine ss(dmy1,dmy2)
class(ty),value :: dmy1
class(* ),value :: dmy2

dmy1%msgTY = "abcde"
end subroutine

subroutine sss(dmy1,dmy2)
class(* ),value :: dmy1
class(ty),value :: dmy2

dmy2%msgTY = "abcde"
end subroutine

subroutine ssss(dmy1,dmy2)
type(ty),value :: dmy1
type(ty),value :: dmy2

dmy1%msgTY = "abcde"
dmy2%msgTY = "abcde"
end subroutine
end

program main
use m1
call s(ty("HELLO"), tt("WORLD", "HAP"))
call ss(ty("HELLO"), tt("WORLD", "HAP"))
call sss(ty("HELLO"), tt("WORLD", "HAP"))
call ssss(ty("HELLO"), ty("WORLD"))
print*, "pass"
end
