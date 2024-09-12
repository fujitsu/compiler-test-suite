module m
implicit none
interface testIF
module procedure test1
module procedure test2
module procedure test3
end interface
contains
real function test1 (obj)
real :: obj
test1 = obj
end function
real function test2 (pr)
procedure(real*8) :: pr
test2 = pr(0._8)
end function
real function test3 (pr1,pr2)
procedure(real*8) :: pr1
procedure(real*8) :: pr2
test3 = pr1(0._8) + pr2(0._8)
end function
    function abc(d1)
     real*8 :: d1,abc
     abc = d1 + 1
    end function
end module

program test
use m
implicit none
if(testIF(2.0) /= 2.0) print *,101
if(testIF(abc) /= 1.0) print *,102
if(testIF(abc,abc) /= 2.0) print *,103
print *,"Pass"
end program
