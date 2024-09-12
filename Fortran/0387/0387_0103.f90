module mod01
 interface m1sub
  subroutine m1sub01(dpprocp01)
   interface
    function dpprocp01() result(dprst01)
     integer :: dprst01
    end function
   end interface
  end subroutine
 end interface
end module

use mod01

interface
 function func01() result(rst01)
  integer :: rst01
 end function
end interface

procedure(func01) :: pfunc01

call m1sub(pfunc01)

print *,'pass'

end

function func01() result(rst01)
 integer :: rst01
 rst01 = 1
end function

function pfunc01() result(prst01)
 integer :: prst01
 prst01 = 1
end function

function dpprocp01() result(dprst01)
 integer :: dprst01
 dprst01 = 1
end function

subroutine sub01(dpprocp01)
 interface
  function dpprocp01() result(dprst01)
   integer :: dprst01
  end function
 end interface
end subroutine

function di01()
 integer :: di01
 di01 = 1
end function

subroutine m1sub01(dpprocp01)
 interface
  function dpprocp01() result(dprst01)
   integer :: dprst01
  end function
 end interface
end subroutine

subroutine m1sub03(dpprocp01)
 procedure(integer), pointer :: dpprocp01
end subroutine
