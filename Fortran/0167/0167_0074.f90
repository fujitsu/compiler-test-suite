module m
  integer :: a(100),b(100),c(100)
  equivalence (a,b,c)
  private c
contains
  subroutine check
    if (any(c /= 30)) print *,22
  end subroutine
end

use m,x=>a,y=>b
x=30
call check
if (any(x /= 30)) print *,11
if (any(y /= 30)) print *,33
print *,'pass'
end
