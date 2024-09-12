module mod01
 interface
  function mifunc01() result(mirst01)
   character(4) :: mirst01
  end function
 end interface
 contains
  function m1func01(dpprocp01) result(m1rst01)
   procedure(mifunc01), pointer :: dpprocp01
   procedure(mifunc01), pointer :: m1rst01
   m1rst01 => dpprocp01
  end function
  function m1func02() result(m1rst02)
   procedure(mifunc01), pointer :: m1rst02
   m1rst02 => mifunc01
  end function
end module

use mod01

interface m1func
 module procedure m1func01, m1func02
end interface

procedure(mifunc01), pointer :: pprocp01

pprocp01 => m1func(pprocp01)

print *,'pass'

end

function mifunc01() result(mirst01)
 character(4) :: mirst01
 mirst01 = 'pass'
end function
