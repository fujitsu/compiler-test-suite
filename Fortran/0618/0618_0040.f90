module mod01
 type ty01
   procedure(m01_func01), pointer,nopass :: pr_pn01
 end type
 procedure(m01_func02), pointer :: pr_pn02
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 100
  end function
  function m01_func02() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 200
  end function
end module

use mod01, ty0A => ty01

type(ty0A) :: t01, t02

pr_pn02=>m01_func01

t02%pr_pn01=>pr_pn02

t01 = t02

if ( .not. associated(t02%pr_pn01)) print *,'fail'
if ( .not. associated(t01%pr_pn01)) print *,'fail'

print *,'pass'

end
