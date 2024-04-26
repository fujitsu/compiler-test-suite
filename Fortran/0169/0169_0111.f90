module m2
  integer x,y
end

module m
  interface
    module function fun()
      use m2
      integer :: fun(x)
    end function
  end interface
end

submodule(m)smod
contains
  module procedure fun
    integer y
    y=10
    if (x/=2) print *,101
    if (y/=10) print *,102
    fun = 12
  end procedure
end 

use m
use m2
x=2
y=3
if (any(fun()/=12)) print *,201
if (size(fun())/=2) print *,202
print *,'pass'
end
