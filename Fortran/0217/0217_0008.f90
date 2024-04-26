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
    module subroutine sub()
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
  end procedure
end

use mod
use typedef
m=1
x(1)=ty(4)
call sub()
print *,'pass'
end
