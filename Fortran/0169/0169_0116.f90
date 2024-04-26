module m
  interface
    module function f1()
      integer :: f1(1*2+3*2)
    end function
    module function f2()
      integer :: f2(4/1+2)
    end function
  end interface
end

submodule(m)smod
contains
  module procedure f1
    if (size(f1) /= 8) print *,1
    f1 = [ (i,i=1,8) ]
  end procedure
  module procedure f2
    if (size(f2) /= 6) print *,3
    f2 = [ (i,i=1,6) ]
  end procedure
end

use m
if (any(f1() /= [1,2,3,4,5,6,7,8])) print *,2
if (any(f2() /= [1,2,3,4,5,6])) print *,4
print *,'pass'
end
