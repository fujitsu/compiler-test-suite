module m1
  type ty1
    integer :: i=1
  end type
  type(ty1) :: t1
end
module m2
  type ty2
    integer :: i=2
  end type
  type(ty2) :: t2
end
module m3
  type ty3
    integer :: i=3
  end type
  type(ty3) :: t3
end

module m
  interface
    module subroutine sub1(a)
use m1,only:t1,ty1
      integer :: a(t1%i)
    end subroutine
    module subroutine sub2(a)
use m2,only:t2,ty2
      integer :: a(t2%i)
    end subroutine
    module subroutine sub3(a)
use m3,only:t3,ty3
      integer :: a(t3%i)
    end subroutine
  end interface
end

submodule (m) smod
contains
module procedure sub1
use m1,only:t1,ty1
if (size(a)/=1) print *,201
if (t1%i    /=1) print *,201
end
module procedure sub2
use m2,only:t2,ty2
if (size(a)/=2) print *,202
if (t2%i    /=2) print *,202
end
module procedure sub3
use m3,only:t3,ty3
if (size(a)/=3) print *,203
if (t3%i    /=3) print *,203
end
end
use m
      integer :: a(4)
call sub1(a)
call sub2(a)
call sub3(a)
print *,'pass'
end
