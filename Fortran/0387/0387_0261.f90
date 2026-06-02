module mod01
 interface 
  function infunc1(i) result(rst)
   integer :: i
   integer :: rst
  end function
  function infunc2(i) result(rst)
   real    :: i
   integer :: rst
  end function
 end interface
end module

use mod01

interface dib_
 function dib(i) result(rst)
  use mod01
  integer :: i
  procedure(infunc1),pointer :: rst
 end function
 function dib_(i) result(rst)
  use mod01
  real :: i
  procedure(infunc2),pointer :: rst
 end function
end interface

interface
 function func1(i) result(rst)
  use mod01
  procedure(infunc1),pointer :: i
  integer :: rst
 end function
end interface

integer :: i

i = func1(dib_(1))
if (i.ne.1) print *,'fail'

print *,'pass'

end

function dib(i) result(rst)
 use mod01
 integer :: i
 procedure(infunc1),pointer :: rst
 rst => infunc1
end function

function dib_(i) result(rst)
 use mod01
 real :: i
 procedure(infunc2),pointer :: rst
 rst => infunc2
end function

function infunc1(i) result(rst)
 integer :: i
 integer :: rst
 rst = 1
end function

function infunc2(i) result(rst)
 real    :: i
 integer :: rst
 rst = 2
end function

function func1(i) result(rst)
 use mod01
 procedure(infunc1),pointer :: i
 integer :: rst
 rst=i(1)
end function
