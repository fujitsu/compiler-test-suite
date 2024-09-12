module m1
interface gen
procedure :: s1,s2
end interface
contains
subroutine s1(f)
 procedure(E2):: f
 if (any(f([0.1])/=E2([0.1]))) print *,101
end subroutine
subroutine s2(f1)
  procedure(E1):: f1
  if (f1(0.1)/=E1(0.1)) print *,102
end subroutine

 function fun(d1) 
   ENTRY E1(d1 )
   E1=d1+1
end function

function fun2(d2) result(r2)
   ENTRY E2(d2 ) result(r2)
   real :: r2(1)
   real :: d2(1)
   r2=d2
end function
end

use m1
call gen( E2)
call gen( E1 )
print *,'pass'
end
