module mod01
 interface
  function infunc1(i) result(rst)
   integer :: i
   integer :: rst
  end function
  function infunc2(i) result(rst)
   real    :: i
   real    :: rst
  end function
  function infunc3(i) result(rst)
   logical :: i
   logical :: rst
  end function
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
  procedure(infunc2),pointer :: i
  integer :: rst
 end function
 function dib_3(i) result(rst)
  use mod01
  procedure(infunc3),pointer :: i
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
  procedure(infunc2),pointer :: rst
 end function
 function func3(i) result(rst)
  use mod01
  integer :: i
  procedure(infunc3),pointer :: rst
 end function
end interface

integer :: i


i = dib_(func1(1))
if (i.ne.1) print *,'fail'
i = dib_(func2(1))
if (i.ne.1) print *,'fail'
i = dib_(func3(1))
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
 procedure(infunc2),pointer :: i
 integer :: rst
 rst = int(i(1.0))
end function

function dib_3(i) result(rst)
 use mod01
 procedure(infunc3),pointer :: i
 integer :: rst
 logical :: l
 l = i(.true.)
 if (l.eqv..true.) then
  rst = 1
 else
  rst = 0
 endif
end function

function infunc1(i) result(rst)
 integer :: i
 integer :: rst
 rst = i
end function

function infunc2(i) result(rst)
 real    :: i
 real    :: rst
 rst = i
end function

function infunc3(i) result(rst)
 logical :: i
 logical :: rst
 rst = i
end function

function func1(i) result(rst)
 use mod01
 integer :: i
 procedure(infunc1),pointer :: rst
 rst => infunc1
end function

function func2(i) result(rst)
 use mod01
 integer :: i
 procedure(infunc2),pointer :: rst
 rst => infunc2
end function

function func3(i) result(rst)
 use mod01
 integer :: i
 procedure(infunc3),pointer :: rst
 rst => infunc3
end function
