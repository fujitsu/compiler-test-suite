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
  module procedure sub
    i = 20
  end procedure
  module procedure fun
    fun = i
  end procedure
end

use m
call sub
if (i /= 20) print *,101
if (fun() /= 20) print *,102
print *,'pass'
end
