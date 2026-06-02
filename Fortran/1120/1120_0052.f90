module mod01
 type mty01
  integer                      :: ii01
  procedure(), pointer, nopass :: pprocp01
 end type
 type mty02
  integer                      :: ii02
  procedure(), pointer, nopass :: pprocp02
 end type
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   type (mty02)         :: m01_f01_arg01
   procedure(), pointer :: m01_rst01
   m01_rst01 => null()
  end function
  function m01_func02() result(m01_rst02)
   procedure(), pointer :: m01_rst02
   m01_rst02 => null()
  end function
end module

use mod01

type (mty01) :: mt01

mt01 = mty01(1, m01_func01(mty02(1, m01_func02())))

print *,'pass'

end
