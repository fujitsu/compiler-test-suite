module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
 end interface
 procedure(mifunc01), pointer :: pmifunc01p
 contains
  function m1func01() result(m1rst01)
   integer :: m1rst01
   entry m1ent01() result(pmifunc01p)
   pmifunc01p = 2.0
   m1rst01 = int(pmifunc01p)
  end function
  function m1func02() result(m1rst02)
   pmifunc01p => m1func01
   m1rst02 = pmifunc01p()
  end function
end module

use mod01

if (m1func02().ne.2) print *,'error'

print *,'pass'

end

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function
