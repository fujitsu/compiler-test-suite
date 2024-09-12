module m
implicit none
interface testIF
  module procedure test1
  module procedure test2
end interface
contains
real function test1 (obj)
  real :: obj
  test1 = obj
end function
real function test2 (pr)
  procedure(real) :: pr
  test2 = pr(0.)
end function
function abc(d1)
  real :: d1,abc
  abc = d1 + 1
end function
end module

program test
use m
implicit none
intrinsic cos
if(testIF(2.0) /= 2.0) print *,101
if(testIF(cos) /= 1.0) print *,102
print *,"Pass"
end program
