module mod01
 contains
  function m1func01(ds01) result(m1rst01)
   character(4), target  :: dst01
   character(4), pointer :: m1rst01
   entry m1ent01(dst01) result(m1rst01)
   m1rst01 => dst01
  end function
end module

use mod01, ifunc01 => m1ent01

interface ifunc
 function ifunc02(drt01) result(irst02)
  real, target  :: drt01
  real, pointer :: irst02
 end function
 module procedure ifunc01
end interface

character(4), target  :: it01
character(4), pointer :: pp01

it01 = 'pass'

pp01 => ifunc(it01)

print *,pp01

end

function ifunc02(drt01) result(irst02)
 real, target  :: drt01
 real, pointer :: irst02
 irst02 => drt01
end function
