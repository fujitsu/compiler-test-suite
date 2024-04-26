module m
  interface
    module recursive function fun(a) result(res)
      integer::a
    end function
  end interface
contains
  module recursive function fun(a) result(res)
    integer::a
    if (a==10) then
      res = 100
    else
      res = fun(a+1)
    end if
  end function
end

use m
if (fun(1) /= 100) print *,101
print *,'pass'
end
