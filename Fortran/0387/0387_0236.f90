module mod1
implicit none
 type mty1
  procedure(m1func3),nopass,pointer :: mp
 end type
 contains
  function m1func1(i) result(rst)
implicit none
   integer (kind=4) :: i,rst
   rst=i
  end function
  function m1func2(i) result(rst)
implicit none
   real    (kind=4) :: i,rst
   rst=i
  end function
  function m1func3(i) result(rst)
implicit none
   integer (kind=4) :: i,rst
   rst=i
  end function
end module

use mod1
implicit none

interface m1func1
 module procedure m1func1,m1func2
end interface

integer :: i

type (mty1) :: mt1

mt1%mp=>m1func1
i = mt1%mp(1)
if (i.ne.1) print *,'fail'
mt1%mp=>null()
mt1=mty1(m1func1)
i = mt1%mp(1)
if (i.ne.1) print *,'fail'

print *,'pass'

end
