module m1
type :: t1
integer :: ii
contains
procedure,nopass    :: aps=>xproc1
procedure,nopass   :: bps=>yproc2
generic::  gen=> aps,bps
end type

contains
integer function xproc1(x)
  integer, intent(in):: x
  xproc1=x
end function

integer function yproc2(y)
interface
function fun(d)
  integer :: fun
end function
end interface
procedure(fun) :: y
yproc2=6
end function
end module

use m1
type(t1) :: obj
integer :: a1
interface
function fun(d)
  integer :: fun
end function
end interface
procedure(fun),pointer :: prc
prc=>fun
a1=5
if( obj%gen(a1) .ne. 5)print*,"101"
if( obj%gen(fun) .ne. 6)print*,"102"
print*,"pass"
end

function fun(d)
  integer :: fun
  d=d+1
  fun=d
end function
