module typedef
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
    module subroutine sub1(d,a,b,c)
      integer :: a(x(m),x(m))
      integer :: b(x(m),x(m))
      integer :: c(z(m))
      integer :: d(z(m),x(m))
    end subroutine
    module subroutine sub2(e,a,b,c)
      integer :: e(z(m),x(m))
      integer :: a(x(m),x(m))
      integer :: b(x(m),x(m))
      integer :: c(z(m))
    end subroutine
    module subroutine sub(a,b,c)
      integer :: a(x(m),x(m))
      integer :: b(x(m),x(m))
      integer :: c(z(m))
    end subroutine
  end interface
end

submodule (mod) smod
contains
  module procedure sub2
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(e) /= 4*4) print *,103
    if (size(a) /= 4*4) print *,103
    if (size(b) /= 4*4) print *,104
    if (size(c) /= 4) print *,105
  end procedure
  module procedure sub1
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(a) /= 4*4) print *,103
    if (size(b) /= 4*4) print *,104
    if (size(c) /= 4) print *,105
    if (size(d) /= 4*4) print *,105
  end procedure
  module procedure sub
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(a) /= 4*4) print *,103
    if (size(b) /= 4*4) print *,104
    if (size(c) /= 4) print *,105
  end procedure
end

use mod
use typedef
integer :: a(4*4),b(4*4),c(4*4)
integer :: d(4*4),e(4*4)
x= [ (i*2,i=1,const) ]
z = [ (i*2,i=1,const) ]
m=2
call sub(a,b,c)
call sub1(d,a,b,c)
call sub2(e,a,b,c)
print *,'pass'
end
