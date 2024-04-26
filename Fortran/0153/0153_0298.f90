module m1
 interface gen
   procedure    x1
   procedure :: x2
 end interface
contains
subroutine x1(k)
  if (k/=1) print *,101
end subroutine
subroutine x2(a)
  if (abs(a-2)>0.0001) print *,102
end subroutine
 end
subroutine s1
use m1
call gen(1)
call gen(2.)
end
call s1
print *,'pass'
end
