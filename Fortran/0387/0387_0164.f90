module mod01
 type                  :: m1ty01
  integer :: ii01 = 111
 end type
 type, extends(m1ty01) :: m1ty02
 end type
end module

module mod02
 use mod01
 interface
  function mifunc01() result(mirst01)
   use mod01
   type(m1ty01) :: mirst01
  end function
  function mifunc02() result(mirst02)
   use mod01
   type(m1ty02) :: mirst02
  end function
 end interface
 procedure(mifunc01)          :: pmifunc01
 procedure(mifunc02)          :: pmifunc02
 procedure(m1func01)          :: pm1func01
 procedure(m1func02)          :: pm1func02
 procedure(mifunc01), pointer :: pmifunc01p
 procedure(mifunc02), pointer :: pmifunc02p
 procedure(m1func01), pointer :: pm1func01p
 procedure(m1func02), pointer :: pm1func02p
 contains
  function m1func01() result(m1rst01)
   type(m1ty01) :: m1rst01
  end function
  function m1func02() result(m1rst02)
   type(m1ty02) :: m1rst02
  end function
end module

use mod01
use mod02

type (m1ty01) :: m1t1_01
type (m1ty02) :: m1t2_01

pmifunc01p => pmifunc01
pmifunc02p => pmifunc02
pm1func01p => pm1func01
pm1func02p => pm1func02

m1t1_01 = mifunc01()
m1t1_01 = m1func01()
m1t1_01 = pmifunc01()
m1t1_01 = pm1func01()
m1t1_01 = pmifunc01p()
m1t1_01 = pm1func01p()

m1t2_01 = mifunc02()
m1t2_01 = m1func02()
m1t2_01 = pmifunc02()
m1t2_01 = pm1func02()
m1t2_01 = pmifunc02p()
m1t2_01 = pm1func02p()

if (m1t1_01%ii01.ne.m1t2_01%ii01) print *,'not pass'

print *,'pass'

end

function mifunc01() result(mirst01)
 use mod01
 type(m1ty01) :: mirst01
 mirst01 = m1ty01()
end function

function mifunc02() result(mirst02)
 use mod01
 type(m1ty02) :: mirst02
 mirst02 = m1ty02()
end function

function pmifunc01() result(pmirst01)
 use mod01
 type(m1ty01) :: pmirst01
 pmirst01 = m1ty01()
end function

function pmifunc02() result(pmirst02)
 use mod01
 type(m1ty02) :: pmirst02
 pmirst02 = m1ty02()
end function

function pm1func01() result(pm1rst01)
 use mod01
 type(m1ty01) :: pm1rst01
 pm1rst01 = m1ty01()
end function

function pm1func02() result(pm1rst02)
 use mod01
 type(m1ty02) :: pm1rst02
 pm1rst02 = m1ty02()
end function
