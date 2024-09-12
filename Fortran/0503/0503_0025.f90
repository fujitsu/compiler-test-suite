module m2
  integer :: n=1
end

module m
  integer :: n=2
  interface
    module function fun()
      use m2
      integer,parameter :: i=8
      integer :: fun(i+n)
      integer,parameter :: j=19
    end function
  end interface
end

submodule (m) smod
contains
  module procedure fun
    if (size(fun) /= 9) print *,3
    if (i/=8) print *,4
    fun = 213
  end procedure
end

use m
if (any(fun()/=213)) print *,1
if (size(fun())/=9) print *,2
print *,'pass'
end
