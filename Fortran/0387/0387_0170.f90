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

use mod01
implicit integer(c)

procedure(cfunc01 ), pointer :: pcfunc01p
procedure(cfuncB01), pointer :: pcfuncB01p
procedure(cfuncB02), pointer :: pcfuncB02p

pcfunc01p  => m01func01
pcfuncB01p => pcfunc01p(m01funcA01)
pcfuncB02p => pcfuncB01p(m01funcB02)

print *,pcfuncB02p('pass')

contains

  function cfunc01(cf01_arg01) result(crst01)
   procedure(cfuncA01)          :: cf01_arg01
   procedure(cfuncB01), pointer :: crst01
   crst01 => cf01_arg01
  end function

  function cfuncA01(cfA01_arg01) result(crstA01)
   procedure(cfuncA02)          :: cfA01_arg01
   procedure(cfuncA02), pointer :: crstA01
   crstA01 => cfA01_arg01
  end function

  function cfuncA02(cfA02_arg01) result(crstA02)
   character(4) :: cfA02_arg01
   character(4) :: crstA02
   crstA02 = cfA02_arg01
  end function

  function cfuncB01(cfB01_arg01) result(crstB01)
   procedure(cfuncB02)          :: cfB01_arg01
   procedure(cfuncB02), pointer :: crstB01
   crstB01 => cfB01_arg01
  end function

  function cfuncB02(cfB02_arg01) result(crstB02)
   character(4) :: cfB02_arg01
   character(4) :: crstB02
   crstB02 = cfB02_arg01
  end function

end
