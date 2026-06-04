module mod_normalfunc_intf
  interface
    function func_i4_01(i1,i2) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
  end interface
end module

module mod_used1_intf
  interface
    subroutine u(pp) 
      use mod_normalfunc_intf
      procedure(func_i4_01), pointer :: pp
    end 
  end interface
end module

use mod_used1_intf
  interface
    function func_i4_01(i1,i2) result(rst)
      integer(kind=4) :: i1,i2,rst
    end function
  end interface
procedure(func_i4_01), pointer :: pp
pp=>func_i4_01
call u(pp)
print *,'sngg730o : pass'
end

function func_i4_01(i1,i2) result(rst)
  integer(kind=4) :: i1,i2,rst
  rst = i1*i2
end function

subroutine u(pp) 
  use mod_normalfunc_intf
  procedure(func_i4_01), pointer :: pp
  if ( pp(3,2)/=6) print *,102
end 

