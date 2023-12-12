module m1
type :: t1
integer :: ii
contains
procedure,nopass    :: aps=>xproc1
end type
contains
integer elemental function xproc1(x)
  integer, intent(in),value:: x
  xproc1=x
end function
end module


use m1
type(t1) :: obj
integer :: a1
a1=5
if( obj%aps(a1) .ne. 5)print*,"101"
print*,"Pass"
end
