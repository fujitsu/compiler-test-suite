module m2
  integer x,y
end

module m
  interface
    module function a()
      use m2
      integer :: a(x)
    end function
  end interface
end

submodule(m)smod
contains
  module procedure a
    integer y
    y=10
    if (x/=2) print *,101
    if (y/=10) print *,102
    if (size(a) /= 2) print *,103
    a = 10
  end procedure
end 

use m
use m2
x=2
y=3
if (any(a() /= 10)) print *,201
print *,'pass'
end
