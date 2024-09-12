module m
implicit none

interface testIF
module procedure test1
module procedure test2
end interface

contains
real function test1 (obj)
real :: obj
test1=obj
end function

function test2 (pr)
real :: test2
interface
function  pr(dd)
  real :: pr
  real :: dd
end function
end interface
test2=pr(4.0)
end function

function abc(d1)
  real :: d1
  real :: abc
   abc = d1 + 1
end function

subroutine s1()
real::x
x=1
 if (testIF(abc)/=5) print *,101
 if (test2 (abc)/=5) print *,102
 if (testIF(x  )/=1) print *,103
 if (test1 (x  )/=1) print *,104
end
end module

use m
call s1()
print *,"pass"
end program
