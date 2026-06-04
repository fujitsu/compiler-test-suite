module mod1
 type mty1
  procedure () ,nopass, pointer :: mt1p1=>null()
  procedure (integer),nopass, pointer :: mt1p2
  procedure (m1func1),nopass, pointer :: mt1p3
 end type
 type mty2
  procedure () , nopass, pointer :: mt2p1=>null()
  procedure (m1sub1),  nopass, pointer :: mt2p2
  procedure (integer), nopass, pointer :: pt2p3=>null()
 end type
 contains
  function m1func1(i) result(rst)
   integer :: i
   integer :: rst
   rst = i
  end function
  function m1func2(i) result(rst)
   real :: i
   integer :: rst
   rst = int(i)
  end function
  subroutine m1sub1(i)
   integer :: i
  end subroutine
  subroutine m1sub2(i)
   real :: i
  end subroutine
end module

use mod1

interface m1func1
 module procedure m1func1,m1func2
end interface

interface m1sub1
 module procedure m1sub1,m1sub2
end interface

integer :: i

type(mty1) :: mt1
type(mty2) :: mt2

mt1%mt1p3=>m1func1
mt2%mt2p2=>m1sub1

i = mt1%mt1p3(1)
if (i.ne.1) print *,'fail'

mt1%mt1p3=>null()

mt1 = mty1(mt1p1=null(),mt1p2=m1func1,mt1p3=m1func1)

if (mt1%mt1p2(1).ne.mt1%mt1p3(1)) print *,'fail'

print *,'pass'

end
