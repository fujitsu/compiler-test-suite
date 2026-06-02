module m1
  type t
    integer :: i!=4
  end type
end
module m333
  interface
    subroutine sub(a)
       use m1
      type(t) :: a(2)
    end subroutine
  end interface
end

use m333
print *,'sngg403h : pass'
end
