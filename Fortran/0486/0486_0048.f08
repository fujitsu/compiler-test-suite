module m1
 interface gen
   procedure :: s1,s2
 end interface
contains
subroutine s1(f)
external::f
call ss1(f)
if (f(0.1)/=sin(0.1)) print *,100
end subroutine
subroutine ss1(f)
if (f(0.1)/=sin(0.1)) print *,101
end subroutine
subroutine s2(f1)
if (f1/=0.1) print *,102
end subroutine
end
use m1
intrinsic sin
call gen( sin)
call gen( 0.1 )
print *,'pass'
end
