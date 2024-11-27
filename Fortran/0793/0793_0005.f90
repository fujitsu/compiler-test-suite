module m1
type::ty
character(len=5)::msgTY
end type

type,extends(ty)::tt
character(len=3)::msgTT
end type

contains

subroutine s1(dmy1,dmy2)
class(ty),value :: dmy1
class(* ),value :: dmy2
dmy1%msgTY = "abcde"
end subroutine

subroutine s2(dmy1,dmy2)
real     ,value :: dmy1(10)
class(* ),value :: dmy2
dmy1= 2.0
end subroutine

subroutine s3(dmy1,dmy2)
character(10)     ,value :: dmy1
class(* ),value :: dmy2
dmy1= 'aaaaaaaa'
end subroutine

subroutine s4(dmy1,dmy2)
character(10)     ,value :: dmy1
class(* ) :: dmy2
dmy1= 'aaaaaaaa'
end subroutine

subroutine s5(dmy1,dmy2)
character(10)            :: dmy1
class(* ) :: dmy2
dmy1= 'aaaaaaaa'
end subroutine

subroutine s6(dmy1,dmy2)
class(* ),value :: dmy1
class(* ),value :: dmy2
select type(dmy1)
 type is(ty)
dmy1%msgTY = "abcde"
end select
end subroutine
end

program main
use m1
character(10)::a
call s1(ty("HELLO"), ty("HELLO"))
call s2([(1.0,k=1,10)], ty("HELLO"))
call s3('1111111111', ty("HELLO"))
call s4('1111111111', ty("HELLO"))
call s5(a           , ty("HELLO"))
call s6(ty("HELLO"), ty("HELLO"))
print*, "pass"
end
