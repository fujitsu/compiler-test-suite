module m1
  integer :: a(100),b(100),c(100)
  equivalence (a,b,c)
  private b
contains
  subroutine check
    if (any(a /= 30)) print *,11
    if (any(b /= 30)) print *,22
  end subroutine
end

module m2
  use m1,y=>a
end

module m3
  use m1,y=>a
  private c
end

use m2
use m3
c=30
call check
if (any(c /= 30)) print *,33
if (any(y /= 30)) print *,33
print *,'pass'
end
