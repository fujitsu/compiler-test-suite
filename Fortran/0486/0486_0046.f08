module m1
 interface gen
   procedure :: s1,s2
 end interface
contains
subroutine s1(f)
external::f
call ss1(f(0.1))
end subroutine
subroutine ss1(f)
if (f/=sin(0.1)) print *,101
end subroutine
subroutine s2(f1)
procedure(fun):: f1
if (f1(0.1)/=fun(0.1)) print *,102
end subroutine
integer function fun(d1)
fun=d1
end function
end
use m1
intrinsic sin
call gen( sin)
call gen( fun )
print *,'pass'
end
