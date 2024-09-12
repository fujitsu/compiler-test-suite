module mod01
 contains

  function m01func01(m01f01_arg01) result(m01rst01)
   procedure(m01funcA01)          :: m01f01_arg01
   procedure(m01funcB01), pointer :: m01rst01
   m01rst01 => m01f01_arg01
  end function

  function m01funcA01(m01fA01_arg01) result(m01rstA01)
   procedure(m01funcA02)          :: m01fA01_arg01
   procedure(m01funcA02), pointer :: m01rstA01
   m01rstA01 => m01fA01_arg01
  end function

  function m01funcA02(m01fA02_arg01) result(m01rstA02)
   character(4) :: m01fA02_arg01
   character(4) :: m01rstA02
   m01rstA02 = m01fA02_arg01
  end function

  function m01funcB01(m01fB01_arg01) result(m01rstB01)
   procedure(m01funcB02)          :: m01fB01_arg01
   procedure(m01funcB02), pointer :: m01rstB01
   m01rstB01 => m01fB01_arg01
  end function

  function m01funcB02(m01fB02_arg01) result(m01rstB02)
   character(4) :: m01fB02_arg01
   character(4) :: m01rstB02
   m01rstB02 = m01fB02_arg01
  end function

end module

module mod02
 contains

  function m02func01(m02f01_arg01) result(m02rst01)
   procedure(m02funcA01)          :: m02f01_arg01
   procedure(m02funcB01), pointer :: m02rst01
   m02rst01 => m02f01_arg01
  end function

  function m02funcA01(m02fA01_arg01) result(m02rstA01)
   procedure(m02funcA02)          :: m02fA01_arg01
   procedure(m02funcA02), pointer :: m02rstA01
   m02rstA01 => m02fA01_arg01
  end function

  function m02funcA02(m02fA02_arg01) result(m02rstA02)
   character(4) :: m02fA02_arg01
   character(4) :: m02rstA02
   m02rstA02 = m02fA02_arg01
  end function

  function m02funcB01(m02fB01_arg01) result(m02rstB01)
   procedure(m02funcB02)          :: m02fB01_arg01
   procedure(m02funcB02), pointer :: m02rstB01
   m02rstB01 => m02fB01_arg01
  end function

  function m02funcB02(m02fB02_arg01) result(m02rstB02)
   character(4) :: m02fB02_arg01
   character(4) :: m02rstB02
   m02rstB02 = m02fB02_arg01
  end function

end module

use mod01
use mod02

procedure(m01func01 ), pointer :: pm01func01p
procedure(m01funcB01), pointer :: pm01funcB01p
procedure(m01funcB02), pointer :: pm01funcB02p

procedure(m02func01 ), pointer :: pm02func01p
procedure(m02funcB01), pointer :: pm02funcB01p
procedure(m02funcB02), pointer :: pm02funcB02p


pm01func01p  => m02func01
pm01funcB01p => pm01func01p(m02funcA01)
pm01funcB02p => pm01funcB01p(m02funcB02)

pm02func01p  => m01func01
pm02funcB01p => pm02func01p(m01funcA01)
pm02funcB02p => pm02funcB01p(m01funcB02)

if (pm01funcB02p('pass').ne.pm02funcB02p('pass')) print *,'not pass'

print *,'pass'

end
