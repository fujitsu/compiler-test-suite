module m
  interface
    module subroutine sub1(t)
    type ty
      sequence
      integer :: i
    end type
    type(ty) :: t
    end subroutine
  end interface
end

submodule (m) smod
contains
module procedure sub1
if (t%i    /=1) print *,201
end
end
use m
    type ty
      sequence
      integer :: i
    end type
    type(ty) :: t
t%i=1
call sub1(t)
print *,'pass'
end
