module m
  interface
    module subroutine sub1(t,a)
  type ty
    sequence
    integer :: i
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
end
print *,'pass'
end
