module typedef
  integer,parameter :: const=8
  integer :: n,m
  type ty
    integer :: i=10
  end type
  type(ty) :: x(const)
end module

module mod
      use typedef
  interface
    module subroutine sub(a)
      integer :: a(x(2)%i)
    end subroutine
  end interface
end

submodule (mod) smod
contains
  module procedure sub
    type(ty)::y
    y = x(m)
    if (const /= 8) print *,101 
    if (x(m)%i /= 4) print *,102
    if (size(a) /= 4) print *,103
  end procedure
end

use mod
use typedef
integer :: a(4)
x(2)%i = 4
m=2
call sub(a)
print *,'pass'
end
