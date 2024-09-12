module mod
interface
   function xyz (aa, bb)
     implicit none
     integer aa, bb, xyz
   end function xyz
end interface
end module

use mod
implicit none
integer ans
ans = xyz(10,20)
print *,ans
end

function xyz (a1, a2)
  implicit none
  type tp1
     integer :: ma = 3
     integer :: mb = 4
     integer :: mc
  end type tp1
  integer a1
  integer a2
  integer xyz
  type(tp1) tt

  tt%mc = 5
  xyz = a1+a2+tt%ma+tt%mb+tt%mc
  return
end function
