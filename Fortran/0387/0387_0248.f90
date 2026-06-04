module mod1
 type mty1
  procedure(xfunc1),nopass, pointer :: m1p1
 end type
 type(mty1) :: m1t
 contains
  function xfunc1() result(rst)
   integer :: rst
   rst = 1
  end function
  function xfunc2() result(rst)
   integer :: rst
   m1t%m1p1=>xfunc1
   rst = m1t%m1p1()
  end function
end module

use mod1

intrinsic iabs
integer :: i

m1t=mty1(xfunc2)

i = m1t%m1p1()

if (i.ne.1) print *,'fail'
print *,'pass'

end
