module m1
type ty
integer :: ii
end type
 interface gen
   procedure :: s2,s1
 end interface
contains
subroutine s1(f)
external::f
end subroutine
subroutine s2(dmy)
procedure(type(ty)) :: dmy
end subroutine

function fun2()
type(ty) :: fun2(2)
fun2=ty(1)
end function

subroutine s()
procedure(fun2),pointer :: pr
pr=>fun2
call gen(pr)
end subroutine
end

use m1
call s()
end
