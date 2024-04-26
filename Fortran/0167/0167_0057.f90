module m1
  integer :: a(100),b(100),c(100)
  equivalence (a,b,c)
  private a
contains
  subroutine check
    if (any(a /= 30)) print *,11
    if (any(b /= 30)) print *,22
  end subroutine
end

module m2
  use m1,y=>b,z=>c
  private y
end

use m1
use m2,c=>z
c=30
call check
if (any(c /= 30)) print *,33
print *,'pass'
end
