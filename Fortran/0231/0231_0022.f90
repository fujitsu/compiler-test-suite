module m
  interface
    module subroutine sub1(t,a)
  type ty
    sequence
    integer :: i=1
  end type
  type(ty) :: t
      integer :: a(t%i)
    end subroutine
    module subroutine sub2(t,a)
  type ty
    sequence
    integer :: i=2
  end type
  type(ty) :: t
      integer :: a(t%i)
    end subroutine
    module subroutine sub3(t,a)
  type ty
    sequence
    integer :: i=3
  end type
  type(ty) :: t
      integer :: a(t%i)
    end subroutine
  end interface
end
submodule (m) smod
contains
module procedure sub1
if (size(a)/=1) print *,201
if (t%i    /=1) print *,201
end
module procedure sub2
if (size(a)/=2) print *,202
if (t%i    /=2) print *,202
end
module procedure sub3
if (size(a)/=3) print *,203
if (t%i    /=3) print *,203
end
end
subroutine r1
use m
      integer :: a(4)
  type ty
    sequence
    integer :: i=1
  end type
  type(ty) :: t
call sub1(t,a)
end
subroutine r2
use m
      integer :: a(4)
  type ty
    sequence
    integer :: i=2
  end type
  type(ty) :: t
call sub2(t,a)
end
subroutine r3
use m
      integer :: a(4)
  type ty
    sequence
    integer :: i=3
  end type
  type(ty) :: t
call sub3(t,a)
end
call r1
call r2
call r3
print *,'pass'
end
