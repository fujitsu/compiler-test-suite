module m1
interface gen
procedure :: s1,s2
end interface
contains
subroutine s1(f)
 procedure(fun2):: f
 if (any(f(0.1)/=fun2(0.1))) print *,101
end subroutine
subroutine s2(f1)
  procedure(fun):: f1
  if (f1(0.1)/=fun(0.1)) print *,102
end subroutine

integer function fun(d1)
  fun=d1
end function

function fun2(d1)
  integer fun2(2)
  fun2=d1
end function
end

use m1
call gen( fun2)
call gen( fun )
print *,'pass'
end
