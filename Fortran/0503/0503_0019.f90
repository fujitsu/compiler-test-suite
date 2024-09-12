module m2
  integer y,z,x
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
  integer::x=100
contains
  module procedure fun
      use m2
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
