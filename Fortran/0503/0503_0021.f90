module m
  integer :: j=2
end

module mm
  integer :: k=5
  interface
    module function fun(x)
      use m
      integer :: x(k)
      integer :: fun(x(j))
    end function
  end interface
end

submodule(mm)smod
contains
  module procedure fun
    fun=10
    if (size(x) /= 5) print *,101
    if (j /= 2) print *,102
    if (size(fun) /= 20) print *,103
  end procedure
end

use mm
integer :: x(5)
x=(/ (i*10,i=1,5) /)
if (size(fun(x)) /= 20) print *,201
print *,'pass'
end
