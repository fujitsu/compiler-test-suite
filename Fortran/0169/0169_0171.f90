module m
  integer :: i
  interface
    module subroutine sub
    end subroutine
    module function fun()
      integer fun
    end function
  end interface
contains
  module subroutine sub
    i = 10
  end subroutine
  module function fun()
    integer :: fun
    fun = i
  end function
end

use m
call sub
if (i /= 10) print *,101
if (fun() /= 10) print *,102
print *,'pass'
end
