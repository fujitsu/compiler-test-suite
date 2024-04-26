module m
  interface
    module function fun()
      integer,parameter :: i=8
      integer :: fun(i)
      integer,parameter :: j=19
    end function
  end interface
end

submodule(m)smod
contains
  module procedure fun
    integer,parameter :: i=5
    integer,parameter :: j=100
    if (i/=5) print *,1
    if (j/=100) print *,2
    if (size(fun) /= 8) print *,3
    fun = 20
  end procedure
end

use m
if (any(fun() /= 20)) print *,1
print *,'pass'
end
