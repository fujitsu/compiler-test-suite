module mod01
 type ty01
  integer :: i01
 end type
 type ty02
  integer :: i02
 end type
 contains
  function m01func01() result(m01rst01)
   type (ty01) :: m01rst01
   m01rst01 = ty01(1)
  end function
  function m01func02(m01_f02_arg01, m01_f02_arg02) result(m01rst02)
   integer     :: m01_f02_arg01
   integer     :: m01_f02_arg02
   type (ty01) :: m01rst02
   m01rst02 = ty01(m01_f02_arg01 + m01_f02_arg02)
  end function
end module

module mod02
 use mod01
 interface ty01
  module procedure m01func01
 end interface
 contains
  function m02func01() result(m02rst01)
   type (ty02) :: m02rst01
   m02rst01 = ty02(1)
  end function
  function m02func02(m02_f02_arg01, m02_f02_arg02) result(m02rst02)
   integer     :: m02_f02_arg01
   integer     :: m02_f02_arg02
   type (ty02) :: m02rst02
   m02rst02 = ty02(m02_f02_arg01 + m02_f02_arg02)
  end function
end module

use mod02

interface ty01
 module procedure m01func02
 function ifunc01(if01_arg01) result(irst01)
  use mod02
  character :: if01_arg01
  type (ty01) :: irst01
 end function
 function ifunc03(if03_arg01) result(irst03)
  use mod02
  logical :: if03_arg01
  type (ty01) :: irst03
 end function
end interface

interface ty02
 module procedure m02func01, m02func02
 function ifunc02(if02_arg01) result(irst02)
  use mod02
  character :: if02_arg01
  type (ty02) :: irst02
 end function
 function ifunc04(if04_arg01) result(irst04)
  use mod02
  logical :: if04_arg01
  type (ty02) :: irst04
 end function
end interface

type (ty01) :: t01
type (ty02) :: t02

t01 = ty01()
t02 = ty02()

if (t01%i01.ne.t02%i02) print *, ' 001 : t01%i01 = ', t01%i01, ', t02%i02 = ', t02%i02

t01 = ty01(1)
t02 = ty02(1)

if (t01%i01.ne.t02%i02) print *, ' 002 : t01%i01 = ', t01%i01, ', t02%i02 = ', t02%i02

t01 = ty01(1.0)
t02 = ty02(1.0)

if (t01%i01.ne.t02%i02) print *, ' 003 : t01%i01 = ', t01%i01, ', t02%i02 = ', t02%i02

t01 = ty01((1.0, 1.0))
t02 = ty02((1.0, 1.0))

if (t01%i01.ne.t02%i02) print *, ' 004 : t01%i01 = ', t01%i01, ', t02%i02 = ', t02%i02

t01 = ty01('a')
t02 = ty02('a')

if (t01%i01.ne.t02%i02) print *, ' 005 : t01%i01 = ', t01%i01, ', t02%i02 = ', t02%i02

t01 = ty01(.true.)
t02 = ty02(.true.)

if (t01%i01.ne.t02%i02) print *, ' 006 : t01%i01 = ', t01%i01, ', t02%i02 = ', t02%i02

print *,'pass'

end

function ifunc01(if01_arg01) result(irst01)
 use mod02
 character :: if01_arg01
 type (ty01) :: irst01
 irst01 = ty01(ichar(if01_arg01))
end function

function ifunc02(if02_arg01) result(irst02)
 use mod02
 character :: if02_arg01
 type (ty02) :: irst02
 irst02 = ty02(ichar(if02_arg01))
end function

function ifunc03(if03_arg01) result(irst03)
 use mod02
 logical :: if03_arg01
 type (ty01) :: irst03
 irst03 = ty01(1)
 if (if03_arg01) irst03 = ty01(1)
end function

function ifunc04(if04_arg01) result(irst04)
 use mod02
 logical :: if04_arg01
 type (ty02) :: irst04
 irst04 = ty02(1)
 if (if04_arg01) irst04 = ty02(1)
end function
