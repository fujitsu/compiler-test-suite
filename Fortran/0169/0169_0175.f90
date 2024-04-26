module m
  integer :: i
  interface
    module subroutine sub() bind(c)
    end subroutine
    module function fun() bind(c)
    end function
  end interface
contains
  module subroutine sub() bind(c)
   i=5
  end subroutine
  module function fun() bind(c)
   fun=10
  end function
end

use m
call sub
if (fun() /= 10) print *,102
print *,'pass'
end
