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

module mod_used2_intf
  interface
    function func_v1(pp) result(rst)
      use mod_used1_intf
      procedure(func_u1), pointer :: pp
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
  rst = pp(1,2)
end function

function func_v1(pp) result(rst)
  use mod_used1_intf
  use mod_normalfunc_intf
  procedure(func_u1), pointer :: pp
  procedure(func_i4_01),pointer :: ppp
  integer :: rst
  ppp=>func_i4_01
  rst = pp(ppp)
end function

use mod_used1_intf
use mod_used2_intf
procedure(func_u1),pointer :: ppp1
ppp1=>func_u1
if ( 2 .ne. func_v1(ppp1)) print *,'fail' 
print *,'pass '
end
