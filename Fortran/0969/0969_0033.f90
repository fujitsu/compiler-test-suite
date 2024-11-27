module mod01
 contains
  function m01func01() result(m01_rst01)
   type ty01
    integer :: ii01
   end type
   type (ty01) :: m01_rst01
   m01_rst01 = ty01(1)
  end function
  function m01func02() result(m01_rst02)
   type ty01
    integer :: ii01
   end type
   type (ty01) :: m01_rst02
   m01_rst02 = ty01(1)
  end function
end module

use mod01

print *,same_type_as(m01func01(), m01func02())

end
