module mod01
 interface
  function mifunc01(miarg01) result(mirst01)
   integer :: miarg01
   integer :: mirst01
  end function
  function mifunc02(miarg02) result(mirst02)
   real    :: miarg02
   integer :: mirst02
  end function

 end interface
 contains
  function m1func01(m1f1arg01) result(m1rst01)
   procedure(mifunc01)          :: m1f1arg01
   procedure(mifunc01), pointer :: m1rst01
   m1rst01 => mifunc01
  end function
  function m1func02(m1f2arg01) result(m1rst02)
   procedure(mifunc02)          :: m1f2arg01
   procedure(mifunc01), pointer :: m1rst02
   m1rst02 => mifunc01
  end function
  function m1func03(m1f3arg01) result(m1rst03)
   procedure(mifunc01)          :: m1f3arg01
   procedure(mifunc02), pointer :: m1rst03
   m1rst03 => mifunc02
  end function
  function m1func04(m1f4arg01) result(m1rst04)
   procedure(mifunc02)          :: m1f4arg01
   procedure(mifunc02), pointer :: m1rst04
   m1rst04 => mifunc02
  end function
end module

use mod01

interface isub
 subroutine isub01(iarg01)
  use mod01
  procedure(m1func01), pointer :: iarg01
 end subroutine
 subroutine isub02(iarg02)
  use mod01
  procedure(m1func02), pointer :: iarg02
 end subroutine
 subroutine isub03(iarg03)
  use mod01
  procedure(m1func03), pointer :: iarg03
 end subroutine
 subroutine isub04(iarg04)
  use mod01
  procedure(m1func04), pointer :: iarg04
 end subroutine
end interface

procedure(mifunc01) , pointer :: pmifuncp01
procedure(mifunc02) , pointer :: pmifuncp02

procedure(m1func01) , pointer :: pm1funcp01
procedure(m1func02) , pointer :: pm1funcp02
procedure(m1func03) , pointer :: pm1funcp03
procedure(m1func04) , pointer :: pm1funcp04

call isub(pm1funcp01)
call isub(pm1funcp02)
call isub(pm1funcp03)
call isub(pm1funcp04)

pmifuncp01 => pm1funcp01(mifunc01)

if (pmifuncp01(1  ).ne.1) print *,'no pass 01'

pmifuncp01 => pm1funcp02(mifunc02)

if (pmifuncp01(2  ).ne.2) print *,'no pass 02'

pmifuncp02 => pm1funcp03(mifunc01)

if (pmifuncp02(3.0).ne.3) print *,'no pass 03'

pmifuncp02 => pm1funcp04(mifunc02)

if (pmifuncp02(4.0).ne.4) print *,'no pass 04'

print *,'pass'

end

function mifunc01(miarg01) result(mirst01)
 integer :: miarg01
 integer :: mirst01
 mirst01 = miarg01
end function

function mifunc02(miarg02) result(mirst02)
 real    :: miarg02
 integer :: mirst02
 mirst02 = int(miarg02)
end function

subroutine isub01(iarg01)
 use mod01
 procedure(m1func01), pointer :: iarg01
 iarg01 => m1func01
end subroutine

subroutine isub02(iarg02)
 use mod01
 procedure(m1func02), pointer :: iarg02
 iarg02 => m1func02
end subroutine

subroutine isub03(iarg03)
 use mod01
 procedure(m1func03), pointer :: iarg03
 iarg03 => m1func03
end subroutine

subroutine isub04(iarg04)
 use mod01
 procedure(m1func04), pointer :: iarg04
 iarg04 => m1func04
end subroutine
