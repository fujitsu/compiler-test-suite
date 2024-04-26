module m1
  type ty
    integer :: i=1
  end type
  type(ty) :: t
end
module m2
  type ty
    integer :: i=2
  end type
  type(ty) :: t
end
module m3
  type ty
    integer :: i=3
  end type
  type(ty) :: t
end

module m
  interface
    module subroutine sub1(a)
use m1,only:t,ty
      integer :: a(t%i)
    end subroutine
    module subroutine sub2(a)
use m2,only:t,ty
      integer :: a(t%i)
    end subroutine
    module subroutine sub3(a)
use m3,only:t,ty
      integer :: a(t%i)
    end subroutine
  end interface
end

submodule (m) smod
contains
module procedure sub1
use m1,only:t,ty
if (size(a)/=1) print *,201
if (t%i    /=1) print *,201
end
module procedure sub2
use m2,only:t,ty
if (size(a)/=2) print *,202
if (t%i    /=2) print *,202
end
module procedure sub3
use m3,only:t,ty
if (size(a)/=3) print *,203
if (t%i    /=3) print *,203
end
end
use m
      integer :: a(4)
call sub1(a)
call sub2(a)
call sub3(a)
print *,'pass'
end
