module m
  interface
    module function sub() bind(c,name="Sub1")
      integer :: sub
    end function
  end interface
contains
  module function sub() bind(c,name="Sub1")
    integer::sub
    print *,'pass'
    sub=10
  end function
end

use m
if (sub() /= 10) print *,101
end
