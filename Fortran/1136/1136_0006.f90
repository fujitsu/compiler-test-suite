module m
    type ty
      integer :: i
    end type
  interface
    module subroutine sub1(t)
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
    type(ty) :: t
t%i=1
call sub1(t)
print *,'pass'
end
