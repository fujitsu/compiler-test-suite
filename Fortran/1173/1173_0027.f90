module m1
  type t
    integer :: i!=4
  end type
  type(t) :: y
integer::n
end
module m333
       use m1
  interface
    module subroutine sub(a)
      integer :: a(n  )
    end subroutine
  end interface
end

use m333
print *,'sngg401h : pass'
end
