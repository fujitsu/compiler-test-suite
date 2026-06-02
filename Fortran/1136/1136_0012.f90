module m1
  integer :: k1=2,k2
end
module typedef
use m1
  integer,parameter :: const=8
  integer :: n,m
  type ty
    integer :: i=10
  end type
  integer :: x(const), z(const)
end module

module mod
      use typedef
  interface
    module subroutine sub1(f,d,a,b,c)
      integer :: a(x(m),k1,x(m))
      integer :: b(x(m),k1,x(m))
      integer :: c(z(m),k1)
      integer :: d(z(m),k1,x(m))
      integer :: f(z(m),k1,x(m))
    end subroutine
    module subroutine sub2(f,e,a,b,c)
      integer :: e(z(m),k1,x(m))
      integer :: a(x(m),k1,x(m))
      integer :: b(x(m),k1,x(m))
      integer :: c(z(m),k1)
      integer :: f(z(m),k1,x(m))
    end subroutine
    module subroutine sub(f,a,b,c)
      integer :: a(x(m),k1,x(m))
      integer :: b(x(m),k1,x(m))
      integer :: c(z(m),k1)
      integer :: f(z(m),k1,x(m))
    end subroutine
  end interface
end

submodule (mod) smod
contains
  module procedure sub2
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(f) /= 2*4*4) print *,103
    if (size(e) /= 2*4*4) print *,103
    if (size(a) /= 2*4*4) print *,103
    if (size(b) /= 2*4*4) print *,104
    if (size(c) /= 2*4) print *,105
  end procedure
  module procedure sub1
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(f) /= 2*4*4) print *,103
    if (size(a) /= 2*4*4) print *,103
    if (size(b) /= 2*4*4) print *,104
    if (size(c) /= 2*4) print *,105
    if (size(d) /= 2*4*4) print *,105
  end procedure
  module procedure sub
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(a) /= 2*4*4) print *,103
    if (size(b) /= 2*4*4) print *,104
    if (size(c) /= 2*4) print *,105
    if (size(f) /= 2*4*4) print *,103
  end procedure
end

use mod
use typedef
integer :: a(2*4*4),b(2*4*4),c(2*4*4)
integer :: d(2*4*4),e(2*4*4),f(2*4*4)
x= [ (i*2,i=1,const) ]
z = [ (i*2,i=1,const) ]
m=2
call sub(f,a,b,c)
call sub1(f,d,a,b,c)
call sub2(f,e,a,b,c)
print *,'pass'
end
