module m
  integer :: a(100),b(100),c(100)
  equivalence (a,b,c)
  private a
contains
  subroutine check
    if (any(a /= 30)) print *,22
  end subroutine
end

use m,y=>b,z=>c
y=30
call check
if (any(y /= 30)) print *,11
if (any(z /= 30)) print *,33
print *,'pass'
end
