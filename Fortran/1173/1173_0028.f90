module m1
  type t
    integer :: i!=4
  end type
  type(t) :: y
integer::n
end
module m333
  interface
    subroutine sub(a)
       use m1
      integer :: a(n  )
    end subroutine
  end interface
end

use m333
print *,'sngg402h : pass'
end
