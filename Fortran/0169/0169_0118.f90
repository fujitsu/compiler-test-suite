module m2
  integer x
end

module m
  interface
    module function fun()
      use m2
      integer :: fun(x)
    end function
  end interface
contains
  module procedure fun
    if (x/=5) print *,101
    fun = 29
  end procedure
end

use m
use m2
x=5
if(any(fun()/=29)) print *,1
if(size(fun())/=5) print *,2
print *,'pass'
end
