module m1
  type t
    integer :: i!=4
  end type
  type(t) :: y
end
module m333
  interface
    module subroutine sub(a)
       use m1
      integer :: a(y%i  )
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
  if (size(a)/=2) print *,501
  if (y%i/=2) print *,502
end
end
use m333
use m1
integer a(2)
y%i=2
call sub(a)
print *,'sngg406h : pass'
end
