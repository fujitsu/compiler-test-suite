module mod01
 interface
  function infunc1(i) result(rst)
   integer :: i
   integer :: rst
  end function
  subroutine insub1(i)
   integer :: i
  end subroutine
 end interface
end module

use mod01

interface dib_
 function dib(i) result(rst)
  use mod01
  procedure(infunc1),pointer :: i
  integer :: rst
 end function
 function dib_(i) result(rst)
  use mod01
  procedure(insub1),pointer :: i
  integer :: rst
 end function
end interface

interface
 function func1(i) result(rst)
  use mod01
  integer :: i
  procedure(infunc1),pointer :: rst
 end function
 function func2(i) result(rst)
  use mod01
  integer :: i
  procedure(insub1),pointer :: rst
 end function
end interface

integer :: i

i = dib(func1(1))
if (i.ne.1) print *,'fail'

print *,'pass'

end

function dib(i) result(rst)
 use mod01
 procedure(infunc1),pointer :: i
 integer :: rst
 rst = i(1)
end function

function dib_(i) result(rst)
 use mod01
 procedure(insub1),pointer :: i
 integer :: rst
 call i(rst)
end function

function infunc1(i) result(rst)
 integer :: i
 integer :: rst
 rst = i
end function

subroutine insub1(i)
 integer :: i
 i = 1
end subroutine

function func1(i) result(rst)
 use mod01
 integer :: i
 procedure(infunc1),pointer :: rst
 rst => infunc1
end function
