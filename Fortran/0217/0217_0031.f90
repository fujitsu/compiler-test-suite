module m1
  type t0
    integer :: i=2
  end type
  type,extends(t0)::t1
    integer :: k=100
  end type
  type,extends(t1)::ty
    integer :: kk=100
  end type
end
module m11
 use m1
  type(ty) :: x
end
module mod
  use m11,tt=>ty
  type ty
    integer :: i=3
  end type
  type(ty) :: y

  interface
    module subroutine sub(a,b,aa,bb)
      integer :: a(x%i),b(y%i)
      integer :: aa(x%i),bb(y%i)
    end subroutine
  end interface
end

submodule (mod) smod
contains
module procedure sub
if (size(a)/=2) print *,101,size(a)
if (size(aa)/=2) print *,111,size(aa)
if (size(b)/=3) print *,102,size(b)
if (size(bb)/=3) print *,112,size(bb)
end
end
use mod
      integer :: a(2),aa(2)
      integer :: b(3),bb(3)
call sub(a,b,aa,bb)
print *,'pass'
end
