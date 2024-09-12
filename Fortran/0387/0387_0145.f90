module mod01
 interface
  function mifunc01() result(mirst01)
   integer   :: mirst01
  end function
  function mifunc02() result(mirst02)
   real      :: mirst02
  end function
  function mifunc03() result(mirst03)
   logical   :: mirst03
  end function
  function mifunc04() result(mirst04)
   character :: mirst04
  end function
  function mifunc05() result(mirst05)
   complex   :: mirst05
  end function
 end interface
 contains
  function m1func01(m1arg01, m1arg02) result(m1rst01)
   procedure(integer )           :: m1arg01
   integer                       :: m1arg02
   procedure(mifunc01),  pointer :: m1rst01
   m1rst01 => m1arg01
  end function
  function m1func02(m1arg01, m1arg02) result(m1rst02)
   procedure(real    )           :: m1arg01
   real                          :: m1arg02
   procedure(mifunc02),  pointer :: m1rst02
   m1rst02 => m1arg01
  end function
  function m1func03(m1arg01, m1arg02) result(m1rst03)
   procedure(logical )           :: m1arg01
   logical                       :: m1arg02
   procedure(mifunc03),  pointer :: m1rst03
   m1rst03 => m1arg01
  end function
  function m1func04(m1arg01, m1arg02) result(m1rst04)
   procedure(character)          :: m1arg01
   character                     :: m1arg02
   procedure(mifunc04 ), pointer :: m1rst04
   m1rst04 => m1arg01
  end function
  function m1func05(m1arg01, m1arg02) result(m1rst05)
   procedure(complex )           :: m1arg01
   complex                       :: m1arg02
   procedure(mifunc05),  pointer :: m1rst05
   m1rst05 => m1arg01
  end function

end module

use mod01, mf1 => m1func01
use mod01, mf2 => m1func02
use mod01, mf3 => m1func03
use mod01, mf4 => m1func04
use mod01, mf5 => m1func05

interface xfunc
 module procedure mf1, mf2, mf3, mf4, mf5
end interface

procedure(integer  ), pointer :: pprocp01
procedure(real     ), pointer :: pprocp02
procedure(logical  ), pointer :: pprocp03
procedure(character), pointer :: pprocp04
procedure(complex  ), pointer :: pprocp05

pprocp01 => xfunc(mifunc01, mifunc01())

if (pprocp01().ne.mifunc01()) print *,'mf1 error'

pprocp02 => xfunc(mifunc02, mifunc02())

if (pprocp02().ne.mifunc02()) print *,'mf2 error'

pprocp03 => xfunc(mifunc03, mifunc03())

if (pprocp03().neqv.mifunc03()) print *,'mf3 error'

pprocp04 => xfunc(mifunc04, mifunc04())

if (pprocp04().ne.mifunc04()) print *,'mf4 error'

pprocp05 => xfunc(mifunc05, mifunc05())

if (pprocp05().ne.mifunc05()) print *,'mf5 error'

print *,'pass'

end

function mifunc01() result(mirst01)
 integer   :: mirst01
 mirst01 = 1
end function

function mifunc02() result(mirst02)
 real      :: mirst02
 mirst02 = 2.0
end function

function mifunc03() result(mirst03)
 logical   :: mirst03
 mirst03 = .true.
end function

function mifunc04() result(mirst04)
 character :: mirst04
 mirst04 = '4'
end function

function mifunc05() result(mirst05)
 complex   :: mirst05
 mirst05 = (5, 5)
end function
