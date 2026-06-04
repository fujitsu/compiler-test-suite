module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
  function mifunc02(miarg01) result(mirst02)
   integer :: miarg01
   integer :: mirst02
  end function
  function mifunc03(miarg01, miarg02) result(mirst03)
   integer :: miarg01
   integer :: miarg02
   integer :: mirst03
  end function
 end interface
 type mty01
  procedure(mifunc01), pointer, nopass :: pmifunc01p01
  procedure(mifunc02), pointer, nopass :: pmifunc02p01
  procedure(mifunc03), pointer, nopass :: pmifunc03p01
 end type

 contains
  function m1func01(m1f1arg01) result(m1rst01)
   type(mty01), external  :: m1f1arg01
   type(mty01)            :: m1rst01
   m1rst01 = m1f1arg01()
  end function
  function m1func02(m1f2arg01) result(m1rst02)
   procedure(type(mty01)) :: m1f2arg01
   type(mty01)            :: m1rst02
   m1rst02 = m1f2arg01()
  end function
end module

use mod01

procedure(cfunc01) :: pcfunc01

type (mty01) :: mtt01, mtt02

mtt01 = m1func01(pcfunc01)
mtt02 = m1func02(pcfunc01)

if (mtt01%pmifunc01p01(    ).ne.mtt02%pmifunc01p01(    )) print *,'mif01 error'
if (mtt01%pmifunc02p01(1   ).ne.mtt02%pmifunc02p01(1   )) print *,'mif02 error'
if (mtt01%pmifunc03p01(2, 3).ne.mtt02%pmifunc03p01(2, 3)) print *,'mif03 error'

print *,'pass'

contains
 function cfunc01() result(crst01)
  type (mty01) :: crst01
  crst01 = mty01(mifunc01, mifunc02, mifunc03)
 end function

end

function pcfunc01() result(prst01)
 use mod01
 type (mty01) :: prst01
 prst01 = mty01(mifunc01, mifunc02, mifunc03)
end function

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function mifunc02(miarg01) result(mirst02)
 integer :: miarg01
 integer :: mirst02
 mirst02 = miarg01
end function

function mifunc03(miarg01, miarg02) result(mirst03)
 integer :: miarg01
 integer :: miarg02
 integer :: mirst03
 mirst03 = miarg01 + miarg02
end function
