module m1
interface gen
procedure :: s1,s2
end interface
contains
subroutine s1(d1,f)
 integer :: d1
 procedure(fun2):: f
 if(d1 .ne. 5)print*,"103"
 if (any(f(0.1)/=fun2(0.1))) print *,101
end subroutine
subroutine s2(d2,f1)
  procedure(integer) ::d2
  procedure(fun):: f1
  if (f1(0.1)/=fun(0.1)) print *,102
  if (d2(0.1)/=fun(0.1)) print *,103
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
integer :: a1
a1=5
call gen(a1, fun2)
call gen(fun,fun )
print *,'pass'
end
