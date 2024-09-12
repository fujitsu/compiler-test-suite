module m2
  integer x,y
end

module m
use m2
  interface
    module function a()
      integer :: a(x)
    end function
  end interface
end

submodule (m) smod
contains
  module procedure a
    if (x/=2) print *,101
    if (y/=3) print *,102
    if (size(a) /= 2) print *,103
    a = 10
  end procedure
end 

use m
x=2
y=3
if (any(a() /= 10)) print *,201
print *,'pass'
end
