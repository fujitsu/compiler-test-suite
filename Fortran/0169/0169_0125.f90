module m2
  integer x,y
end

module m
  interface
    module function fun(a)
      use m2
      integer :: a(x)
      integer :: fun(y)
    end function
  end interface
contains
  module procedure fun
    use m2 
    if (x/=2) print *,101
    if (y/=3) print *,102
    if (size(a)/=2) print *,103
    fun = 12
  end procedure
end 

use m
use m2
x=2
y=3
if (size(fun([1,2]))/=3) print *,201
if (any(fun([1,2])/=12)) print *,202
print *,'pass'
end
