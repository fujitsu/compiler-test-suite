module mod01
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   implicit character(:) (m)
   pointer      :: m01_rst01
   allocatable  :: m01_var01
   target       :: m01_var01
   character(*) :: m01_f01_arg01
   allocate(character(len(m01_f01_arg01)) :: m01_var01)
   m01_rst01 => m01_var01
   m01_var01 = m01_f01_arg01
  end function
end module

use mod01


implicit character(:) (c)
implicit character(*) (x)

if (cfunc01('pass').eq.m01_func01('pass')) print *,'pass'

contains

 function cfunc01(x_cf01_arg01) result(crst01)
  pointer      :: crst01
  allocatable  :: ch_al01
  target       :: ch_al01
  allocate(character(len(x_cf01_arg01)) :: ch_al01)
  crst01 => ch_al01
  ch_al01 = x_cf01_arg01
 end function

end
