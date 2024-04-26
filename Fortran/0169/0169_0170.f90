module m
  interface
    module subroutine sub(a)
      integer :: a
    end subroutine
    module function fun(a)
      integer :: fun,a
    end function 
  end interface
contains
  module procedure sub
    if (a==1) print *,'pass'
  end procedure sub
  module procedure fun
    fun=0
    if (a==1) fun = 2
  end procedure fun
end

use m
call sub(1)
if (fun(1) /= 2) print *,'ng'
end
