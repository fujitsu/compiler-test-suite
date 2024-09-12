module mod01
 contains
  function m01func01(m01f01_arg01, m01f01_arg02) result(m01rst01)
   procedure(integer) :: m01f01_arg01
   integer            :: m01f01_arg02
   integer            :: m01rst01
   m01rst01 = m01f01_arg01(m01f01_arg02)
  end function
end module

module mod02
 contains
  function m02func01(m02f01_arg01) result(m02rst01)
   procedure(integer)            :: m02f01_arg01
   procedure(m02func02), pointer :: m02rst01
   m02rst01 => m02f01_arg01
  end function
  function m02func02(m02f02_arg01) result(m02rst02)
   integer :: m02f02_arg01
   integer :: m02rst02
   m02rst02 = m02f02_arg01
  end function
end module

use mod01
use mod02

procedure(cfunc01) :: pcfunc01

if (m01func01(pcfunc01           , 2).ne.4) print *,'not pass'

print *,'pass'

contains
 function cfunc01(cf01_arg01) result(crst01)
  integer :: cf01_arg01
  integer :: crst01
  crst01 = cf01_arg01
 end function
end

function pcfunc01(pcf01_arg01) result(pcrst01)
 integer :: pcf01_arg01
 integer :: pcrst01
 pcrst01 = pcf01_arg01 * pcf01_arg01
end function
