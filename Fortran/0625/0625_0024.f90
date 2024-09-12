module mod01
 type ty01
  integer :: i01
 end type
 type ty02
  integer :: i02
 end type
 contains
  function m01func01() result(m01rst01)
   type(ty01) :: m01rst01
   m01rst01 = ty01(1)
  end function
  function m01func02(m01_f02_arg01) result(m01rst02)
   type(ty01) :: m01_f02_arg01
   type(ty01) :: m01rst02
   m01rst02 = m01_f02_arg01
  end function
  function m01func03(m01_f03_arg01, m01_f03_arg02) result(m01rst03)
   integer    :: m01_f03_arg01
   integer    :: m01_f03_arg02
   type(ty01) :: m01rst03
   m01rst03 = ty01(m01_f03_arg01 + m01_f03_arg02)
  end function
end module

use mod01

interface ty01
 module procedure m01func01, m01func02, m01func03
end interface

interface ty02
 function ifunc01() result(irst01)
  use mod01
  type(ty02) :: irst01
 end function
 function ifunc02(if02_arg01) result(irst02)
  use mod01
  type(ty02) :: if02_arg01
  type(ty02) :: irst02
 end function
 function ifunc03(if03_arg01, if03_arg02) result(irst03)
  use mod01
  integer    :: if03_arg01
  integer    :: if03_arg02
  type(ty02) :: irst03
 end function
end interface

type (ty01) :: t01
type (ty02) :: t02

t01 = ty01(1)
t02 = ty02(1)

if (t01%i01.ne.t02%i02) print *, '  001 | t01%01 = ', t01%i01, ',  t02%02 = ', t02%i02

t01 = ty01(i01 = 1)
t02 = ty02(i02 = 1)

if (t01%i01.ne.t02%i02) print *, '  002 | t01%01 = ', t01%i01, ',  t02%02 = ', t02%i02

t01 = ty01()
t02 = ty02()

if (t01%i01.ne.t02%i02) print *, '  003 | t01%01 = ', t01%i01, ',  t02%02 = ', t02%i02

t01 = ty01(t01)
t02 = ty02(t02)

if (t01%i01.ne.t02%i02) print *, '  004 | t01%01 = ', t01%i01, ',  t02%02 = ', t02%i02

t01 = ty01(m01_f02_arg01 = t01)
t02 = ty02(if02_arg01    = t02)

if (t01%i01.ne.t02%i02) print *, '  005 | t01%01 = ', t01%i01, ',  t02%02 = ', t02%i02

t01 = ty01(1, 2)
t02 = ty02(1, 2)

if (t01%i01.ne.t02%i02) print *, '  006 | t01%01 = ', t01%i01, ',  t02%02 = ', t02%i02

t01 = ty01(m01_f03_arg01 = 1, m01_f03_arg02 = 2)
t02 = ty02(if03_arg01    = 1, if03_arg02    = 2)

if (t01%i01.ne.t02%i02) print *, '  007 | t01%01 = ', t01%i01, ',  t02%02 = ', t02%i02

print *,'pass'

end

function ifunc01() result(irst01)
 use mod01
 type(ty02) :: irst01
 irst01 = ty02(1)
end function

function ifunc02(if02_arg01) result(irst02)
 use mod01
 type(ty02) :: if02_arg01
 type(ty02) :: irst02
 irst02 = if02_arg01
end function

function ifunc03(if03_arg01, if03_arg02) result(irst03)
 use mod01
 integer    :: if03_arg01
 integer    :: if03_arg02
 type(ty02) :: irst03
 irst03 = ty02(if03_arg01 + if03_arg02)
end function
