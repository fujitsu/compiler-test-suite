module mod01
 type                  :: m1ty01
  integer :: ii01 = 101
 end type
 type, extends(m1ty01) :: m1ty02
 end type
 contains
  function m1func01() result(m1rst01)
   type(m1ty01) :: m1rst01
   m1rst01 = m1ty01()
  end function
  function m1func02() result(m1rst02)
   type(m1ty02) :: m1rst02
   m1rst02 = m1ty02()
  end function
end module

module mod02
 use mod01
 interface
  function mifunc01() result(mirst01)
   use mod01
   procedure(type(m1ty01)), pointer :: mirst01
  end function
  function mifunc02() result(mirst02)
   use mod01
   type(m1ty01), external,  pointer :: mirst02
  end function
  function mifunc03() result(mirst03)
   use mod01
   procedure(type(m1ty02)), pointer :: mirst03
  end function
  function mifunc04() result(mirst04)
   use mod01
   type(m1ty02), external,  pointer :: mirst04
  end function
 end interface
 type(m1ty01), external,  pointer :: e_mty01p_01
 type(m1ty02), external,  pointer :: e_mty02p_01
 procedure(type(m1ty01)), pointer :: p_mty01p_01
 procedure(type(m1ty02)), pointer :: p_mty02p_01

 procedure(mifunc01) :: pmifunc01
 procedure(mifunc02) :: pmifunc02
 procedure(mifunc03) :: pmifunc03
 procedure(mifunc04) :: pmifunc04
 procedure(m2func01) :: pm2func01
 procedure(m2func02) :: pm2func02
 procedure(m2func03) :: pm2func03
 procedure(m2func04) :: pm2func04

 contains
  function m2func01() result(m2rst01)
   procedure(type(m1ty01)), pointer :: m2rst01
   m2rst01 => m1func01
  end function
  function m2func02() result(m2rst02)
   type(m1ty01), external,  pointer :: m2rst02
   m2rst02 => m1func01
  end function
  function m2func03() result(m2rst03)
   procedure(type(m1ty02)), pointer :: m2rst03
   m2rst03 => m1func02
  end function
  function m2func04() result(m2rst04)
   type(m1ty02), external,  pointer :: m2rst04
   m2rst04 => m1func02
  end function
end module

use mod01
use mod02

type(m1ty01) :: tmt01_01
type(m1ty02) :: tmt02_01

e_mty01p_01 => mifunc01()
e_mty01p_01 => mifunc02()
e_mty01p_01 => m2func01()
e_mty01p_01 => m2func02()
e_mty01p_01 => pmifunc01()
e_mty01p_01 => pmifunc02()
e_mty01p_01 => pm2func01()
e_mty01p_01 => pm2func02()

p_mty01p_01 => mifunc01()
p_mty01p_01 => mifunc02()
p_mty01p_01 => m2func01()
p_mty01p_01 => m2func02()
p_mty01p_01 => pmifunc01()
p_mty01p_01 => pmifunc02()
p_mty01p_01 => pm2func01()
p_mty01p_01 => pm2func02()

e_mty02p_01 => mifunc03()
e_mty02p_01 => mifunc04()
e_mty02p_01 => m2func03()
e_mty02p_01 => m2func04()
e_mty02p_01 => pmifunc03()
e_mty02p_01 => pmifunc04()
e_mty02p_01 => pm2func03()
e_mty02p_01 => pm2func04()

p_mty02p_01 => mifunc03()
p_mty02p_01 => mifunc04()
p_mty02p_01 => m2func03()
p_mty02p_01 => m2func04()
p_mty02p_01 => pmifunc03()
p_mty02p_01 => pmifunc04()
p_mty02p_01 => pm2func03()
p_mty02p_01 => pm2func04()

tmt01_01 = p_mty01p_01()
tmt02_01 = p_mty02p_01()

if (tmt01_01%ii01.ne.tmt02_01%ii01) print *,'not pass'

tmt01_01 = e_mty01p_01()
tmt02_01 = e_mty02p_01()

if (tmt01_01%ii01.ne.tmt02_01%ii01) print *,'not pass'

print *,'pass'

end

function mifunc01() result(mirst01)
 use mod01
 procedure(type(m1ty01)), pointer :: mirst01
 mirst01 => m1func01
end function

function mifunc02() result(mirst02)
 use mod01
 type(m1ty01), external,  pointer :: mirst02
 mirst02 => m1func01
end function

function mifunc03() result(mirst03)
 use mod01
 procedure(type(m1ty02)), pointer :: mirst03
 mirst03 => m1func02
end function

function mifunc04() result(mirst04)
 use mod01
 type(m1ty02), external,  pointer :: mirst04
 mirst04 => m1func02
end function

function pmifunc01() result(pmirst01)
 use mod01
 procedure(type(m1ty01)), pointer :: pmirst01
 pmirst01 => m1func01
end function

function pmifunc02() result(pmirst02)
 use mod01
 type(m1ty01), external,  pointer :: pmirst02
 pmirst02 => m1func01
end function

function pmifunc03() result(pmirst03)
 use mod01
 procedure(type(m1ty02)), pointer :: pmirst03
 pmirst03 => m1func02
end function

function pmifunc04() result(pmirst04)
 use mod01
 type(m1ty02), external,  pointer :: pmirst04
 pmirst04 => m1func02
end function

function pm2func01() result(pm2rst01)
 use mod01
 procedure(type(m1ty01)), pointer :: pm2rst01
 pm2rst01 => m1func01
end function

function pm2func02() result(pm2rst02)
 use mod01
 type(m1ty01), external,  pointer :: pm2rst02
 pm2rst02 => m1func01
end function

function pm2func03() result(pm2rst03)
 use mod01
 procedure(type(m1ty02)), pointer :: pm2rst03
 pm2rst03 => m1func02
end function

function pm2func04() result(pm2rst04)
 use mod01
 type(m1ty02), external,  pointer :: pm2rst04
 pm2rst04 => m1func02
end function
