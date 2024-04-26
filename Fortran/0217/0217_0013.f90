module mod
  type ty
    integer :: i
  end type
  type(ty) :: x

  interface
    module subroutine sub(a)
      integer :: a(x%i)
    end subroutine
  end interface
end

submodule (mod) smod
contains
module procedure sub
if (size(a)/=2) print *,101,a
if (x%i/=2    ) print *,102,x%i
end
end
use mod
integer::b(2)
x%i=2
call sub(b)
print *,'pass'
end
