module typedef
  integer :: k1=2,k2=1
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
      integer :: a(x(m)+k2,k1+k2,x(m+k2))
      integer :: b(x(m)+k2,k1+k2,x(m+k2))
      integer :: c(z(m)+k2,k1+k2)
      integer :: d(z(m)+k2,k1+k2,x(m+k2))
      integer :: f(z(m)+k2,k1+k2,x(m+k2))
    end subroutine
    module subroutine sub2(f,e,a,b,c)
      integer :: e(z(m)+k2,k1+k2,x(m+k2))
      integer :: a(x(m)+k2,k1+k2,x(m+k2))
      integer :: b(x(m)+k2,k1+k2,x(m+k2))
      integer :: c(z(m)+k2,k1+k2)
      integer :: f(z(m)+k2,k1+k2,x(m+k2))
    end subroutine
    module subroutine sub(f,a,b,c)
      integer :: a(x(m)+k2,k1+k2,x(m+k2))
      integer :: b(x(m)+k2,k1+k2,x(m+k2))
      integer :: c(z(m)+k2,k1+k2)
      integer :: f(z(m)+k2,k1+k2,x(m+k2))
    end subroutine
  end interface
end

submodule (mod) smod
contains
  module procedure sub2
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(f) /= 3*5*6) print *,103
    if (size(e) /= 3*5*6) print *,1031
    if (size(a) /= 3*5*6) print *,1023
    if (size(b) /= 3*5*6) print *,104
    if (size(c) /= 3*5) print *,105
  end procedure
  module procedure sub1
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(f) /= 3*5*6) print *,103
    if (size(a) /= 3*5*6) print *,103
    if (size(b) /= 3*5*6) print *,104
    if (size(c) /= 3*5) print *,105
    if (size(d) /= 3*5*6) print *,105
  end procedure
  module procedure sub
    if (const /= 8) print *,101 
    if (x(m) /= 4) print *,102
    if (z(m) /= 4) print *,1021
    if (size(a) /= 3*5*6) print *,103
    if (size(b) /= 3*5*6) print *,104
    if (size(c) /= 3*5) print *,105
    if (size(f) /= 3*5*6) print *,103
  end procedure
end

use mod
use typedef
integer :: a(3*8*6),b(3*8*6),c(3*8*6)
integer :: d(3*8*6),e(3*8*6),f(3*8*6)
x= [ (i*2,i=1,const) ]
z = [ (i*2,i=1,const) ]
m=2
call sub(f,a,b,c)
call sub1(f,d,a,b,c)
call sub2(f,e,a,b,c)
print *,'pass'
end
