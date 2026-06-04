module n1
  interface
    function func_i4_01(i1,i2) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
  end interface
end module

module m01
  interface
    function u_u1(pp) result(rst)
      use n1
      procedure(func_i4_01), pointer :: pp
      integer :: rst
    end function
  end interface
end module

module k
  interface
    function v1(pp) result(rst)
      use m01
      procedure(u_u1), pointer,intent(in) :: pp
      integer :: rst
    end function
  end interface
end module

use m01
use k
procedure(u_u1),pointer :: ppp1
ppp1=>u_u1
if ( 2 .ne. v1(ppp1)) print *,1001
if ( 2 .ne. v1(u_u1)) print *,1002
print *,'sngg759o : pass'
end

function func_i4_01(i1,i2) result(rst)
  integer(kind=4) :: i1,i2,rst
  rst = i1*i2
end function

function u_u1(pp) result(rst)
  use n1
  procedure(func_i4_01), pointer :: pp
  integer(kind=4) :: rst
  rst = pp(1,2)
end function

function v1(pp) result(rst)
  use m01
  use n1
  procedure(u_u1), pointer,intent(in) :: pp
  procedure(func_i4_01),pointer :: ppp
  integer :: rst
  ppp=>func_i4_01
  rst = pp(ppp)
end function

