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

use m1
use m333
y%i=2
print *,'sngg396h : pass'
end
