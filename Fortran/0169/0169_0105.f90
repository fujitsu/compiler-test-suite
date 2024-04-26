module m
  interface
    module function fun()
      common/com/n
      integer ::fun(n)
    end function
  end interface
end

submodule(m)smod
contains
  module procedure fun
    if (n/=3) print *,1
    if (size(fun)/=3) print *,2
    fun = 20
  end procedure
end

use m
common/com/n
integer::n
n=3
if(any(fun() /=20)) print *,1
print *,'pass'
end
