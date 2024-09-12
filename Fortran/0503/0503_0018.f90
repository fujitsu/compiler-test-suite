module m
  interface
    module function fun() result(r)
      common/com/n
      integer ::r  (n)
    end function
  end interface
end

submodule(m)smod
contains
  module procedure fun
    if (n/=3) print *,1
    if (size(r  )/=3) print *,2
       r= 20
  end procedure
end

use m
common/com/n
integer::n
n=3
if(any(fun() /=20)) print *,1
print *,'pass'
end
