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
  integer, allocatable:: x
  xproc1=x
end function

integer function yproc2(y)
  integer, pointer:: y
  yproc2=y
end function
end module

use m1
integer,allocatable :: a1
integer,pointer :: p1
type(t1) :: obj
allocate(a1)
allocate(p1)
a1=5
p1=10
if( obj%aps(a1) .ne. 5)print*,"101"
if( obj%bps(p1) .ne. 10)print*,"102"
print*,"pass"
end
