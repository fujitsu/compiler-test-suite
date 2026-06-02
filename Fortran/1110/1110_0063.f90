module mod_normalfunc_intf
  interface
    function func_i4_01(i1,i2) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
  end interface
end module

module mod_used1_intf
  interface
    function func_u1(pp) result(rst)
      use mod_normalfunc_intf
      procedure(func_i4_01), pointer :: pp
      integer :: rst
    end function
  end interface
end module

function func_i4_01(i1,i2) result(rst)
  integer(kind=4) :: i1,i2,rst
  rst = i1*i2
end function

function func_u1(pp) result(rst)
  use mod_normalfunc_intf
  procedure(func_i4_01), pointer :: pp
  integer(kind=4) :: rst
  rst = pp(3,2)
end function

use mod_used1_intf
use mod_normalfunc_intf
procedure(func_u1),pointer :: ppp1
procedure(func_i4_01), pointer :: pp
pp=>func_i4_01
if (func_u1(pp)/=6) print *,1001
ppp1=>func_u1
if (ppp1(pp)/=6) print *,1002
print *,'sngg726o : pass'
end
