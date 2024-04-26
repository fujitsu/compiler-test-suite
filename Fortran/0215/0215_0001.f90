module m2
  implicit none
  integer :: n=2
end

module m
  implicit none
  integer :: n=10000
  interface
    module subroutine sub(a,b)
      use m2
  implicit none
      integer :: a(n,n+2)
      integer :: b(size(a,dim=2))
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    if (size(a) /= 8) print *,3,size(a)
    if (size(b) /= 4) print *,4,size(b)
a=1
b=2
  end procedure
end

use m
integer::a(8),b(8)
call sub(a,b)
if (any(a/=1)) print *,101
if (any(b(:4)/=2)) print *,102
print *,'pass'
end
