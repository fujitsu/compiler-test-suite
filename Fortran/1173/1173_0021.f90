module m1
  type t
    integer :: i!=4
  end type
  type(t) :: y
integer::n
end
module m333
  interface
    module subroutine sub(a)
       use m1
      integer :: a(n  )
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1
if (y%i    /=2) print *,203
if (size(a)/=4) print *,201
end
end
use m333
use m1
      integer :: a(4)
y%i=2
n=4
call sub(a)
print *,'sngg394h : pass'
end
