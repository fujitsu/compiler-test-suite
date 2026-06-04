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

use m333
print *,'sngg407h : pass'
end
