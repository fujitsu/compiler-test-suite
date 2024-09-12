module mod01
 interface
  function func_c1() result(rst)
   character :: rst
  end function
  function func_c2() result(rst)
   character(len=2) :: rst
  end function
 end interface
end module

module mod02
 use mod01
 contains
  function xfunc1(i) result(rst)
   use mod01
   procedure(func_c1),pointer :: i
   integer :: rst
   entry ent(i)
   rst = 1
  end function
  function xfunc2(i) result(rst)
   use mod01
   procedure(func_c1),pointer :: i
   integer :: rst
   rst = ent(null())
  end function
  function xfunc3(i) result(rst)
   use mod01
   procedure(func_c2),pointer :: i
   integer :: rst
   rst = 1
  end function
end module

use mod01
use mod02

interface
 function func(i) result(rst)
  use mod01
  procedure(func_c1),pointer :: i
  integer :: rst
 end function
end interface

interface dib_
 function dib(i) result(rst)
  use mod01
  procedure(func_c1),pointer :: i
  integer :: rst
 end function
 function dib_(i) result(rst)
  use mod01
  integer :: i
  integer :: rst
 end function
 function dib_1(i) result(rst)
  use mod01
  logical :: i
  integer :: rst
 end function
end interface

integer :: i

i = func(null())
i = dib_(null())

print *,'pass'

end

function func_c1() result(rst)
 character :: rst
 rst = 'a'
end function

function func_c2() result(rst)
 character(len=2) :: rst
 rst = 'ab'
end function

function func(i) result(rst)
 use mod01
 procedure(func_c1),pointer :: i
 integer :: rst
 rst = 1
end function

function dib(i) result(rst)
 use mod01
 procedure(func_c1),pointer :: i
 integer :: rst
 rst = 1
end function
function dib_(i) result(rst)
 use mod01
 integer :: i
 integer :: rst
 rst = 1
end function
function dib_1(i) result(rst)
 use mod01
 logical :: i
 integer :: rst
 rst = 1
end function
