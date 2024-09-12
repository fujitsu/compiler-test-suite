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
  procedure(real*8) :: pr
  real*8 :: arg=2.0
  test2 = pr(arg)
end function
 function abc(d1)
  real*8 :: abc,d1
  abc = d1 + 1.0
  end function
end module

program test
use m
implicit none
if(testIF(2.0) /= 2.0) print *,101
if(testIF(abc) /= 3.0) print *,102
print *,"pass"
end program
