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
end module

use mod01

procedure(mifunc01), pointer :: pprocp01

pprocp01 => m1func01(pprocp01)

print *,'pass'

end
