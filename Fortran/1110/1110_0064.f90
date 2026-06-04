module mod_normalfunc_intf
  interface
    function func_i4_01(i1,i2) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
  end interface
end module

module mod_used1_intf
  interface
    function func_u1(p1,p2,p3) result(rst)
      use mod_normalfunc_intf
      procedure(func_i4_01), pointer :: p1
      procedure(p1), pointer :: p2
      procedure(p2), pointer :: p3
      integer :: rst
    end function
  end interface
end module

function func_i4_01(i1,i2) result(rst)
  integer(kind=4) :: i1,i2,rst
  rst = i1*i2
end function

 function func_u1(p1,p2,p3) result(rst)
      use mod_normalfunc_intf
      procedure(func_i4_01), pointer :: p1
      procedure(p1), pointer :: p2
      procedure(p2), pointer :: p3
  integer(kind=4) :: rst
  rst = p1(3,2)+p2(4,2)+p3(5,2)
end function

use mod_used1_intf
use mod_normalfunc_intf
procedure(func_u1),pointer :: ppp1
procedure(func_i4_01), pointer :: pp
pp=>func_i4_01
if (func_u1(pp,pp,pp)/=6+8+10) print *,1001
ppp1=>func_u1
if (ppp1(pp,pp,pp)/=6+8+10) print *,1002
print *,'sngg727o : pass'
end
