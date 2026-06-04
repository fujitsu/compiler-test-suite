module mod_normalfunc_intf
  interface
    function func_i4_01(i1,i2) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
    function func_i4_02(i1,i2,i3) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
    function func_i4_03(i1,i2,i3,i4) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
  end interface
end module

module mod_used1_intf
  interface
    function func_u1(p1,p2,p3,x1,x2,x3) result(rst)
      use mod_normalfunc_intf
      procedure(func_i4_01), pointer :: p1
      procedure(func_i4_02), pointer :: p2
      procedure(func_i4_03), pointer :: p3
      procedure(p1        ), pointer :: x1
      procedure(p2        ), pointer :: x2
      procedure(p3        ), pointer :: x3
      integer :: rst
    end function
  end interface
end module

function func_i4_01(i1,i2) result(rst)
  integer(kind=4) :: i1,i2,rst
  rst = i1*i2
end function
function func_i4_02(i1,i2,i3) result(rst)
  integer(kind=4) :: i1,i2,rst
  rst = i1*i2*i3
end function
function func_i4_03(i1,i2,i3,i4) result(rst)
  integer(kind=4) :: i1,i2,rst
  rst = i1*i2*i3*i4
end function

 function func_u1(p1,p2,p3,x1,x2,x3) result(rst)
      use mod_normalfunc_intf
      procedure(func_i4_01), pointer :: p1
      procedure(func_i4_02), pointer :: p2
      procedure(func_i4_03), pointer :: p3
      procedure(p1        ), pointer :: x1
      procedure(p2        ), pointer :: x2
      procedure(p3        ), pointer :: x3
  integer(kind=4) :: rst
  rst = p1(3,2)+p2(4,2,2)+p3(5,2,2,2)
  rst = rst+x1(3,2)+x2(4,2,2)+x3(5,2,2,2)
end function

use mod_used1_intf
use mod_normalfunc_intf
procedure(func_u1),pointer :: ppp1
procedure(func_i4_01), pointer :: p1
procedure(func_i4_02), pointer :: p2
procedure(func_i4_03), pointer :: p3
p1=>func_i4_01
p2=>func_i4_02
p3=>func_i4_03
if (func_u1(p1,p2,p3,p1,p2,p3)/=2*(6+16+40)) print *,1001
ppp1=>func_u1
if (ppp1(p1,p2,p3,p1,p2,p3)/=2*(6+16+40)) print *,1002
print *,'sngg729o : pass'
end
