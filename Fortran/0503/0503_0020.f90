module m2
  integer x,y
end

module m
      use m2
  interface
    module function fun()
      integer :: fun(x)
    end function
  end interface
end

submodule(m)smod
integer::z,y=3
contains
  module procedure fun
    if (x/=2) print *,101
    if (y/=3 ) print *,102
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
