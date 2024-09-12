module mod01
 type ty01
  integer :: i01
 end type
 interface ty01
  module procedure m01func01
 end interface

 contains
  function m01func01() result(m01rst01)
   type (ty01) :: m01rst01
   m01rst01 = ty01(1)
  end function
  function m01func02() result(m02rst01)
   type, bind(c) :: ty02
    integer :: i02
   end type
   type (ty02) :: m02rst01
   m02rst01 = ty02(1)
  end function
end module

use mod01, ty0A => ty01

type (ty0A) :: t0A

type, bind(c) :: ty02
 integer :: i02
end type

type (ty02) :: t02

interface ty01
 function ifunc01(if01_arg01) result(irst01)
  use mod01
  character   :: if01_arg01
  type (ty01) :: irst01
 end function
 module procedure m01func01
 function ifunc04(if04_arg01) result(irst04)
  use mod01
  integer     :: if04_arg01
  type (ty01) :: irst04
 end function
end interface

interface ty0A
 function ifunc02(if02_arg01) result(irst02)
  use mod01
  character   :: if02_arg01
  type (ty01) :: irst02
 end function
end interface

interface ty02
 module procedure m01func02
 function ifunc03(if03_arg01) result(irst03)
  type, bind(c) :: ty02
   integer :: i02
  end type
  character   :: if03_arg01
  type (ty02) :: irst03
 end function
end interface

t02 = ty02()
t0A = ty0A()

if (t02%i02.ne.t0A%i01) print *,'error  001'

t0A = ty01()

if (t02%i02.ne.t0A%i01) print *,'error  002'

t02 = ty02(4)
t0A = ty0A(4)

if (t02%i02.ne.t0A%i01) print *,'error  003'

t0A = ty01(4)

if (t02%i02.ne.t0A%i01) print *,'error  004'

t02 = ty02('a')
t0A = ty0A('a')

if (t02%i02.ne.t0A%i01) print *,'error  005'

t0A = ty01('a')

if (t02%i02.ne.t0A%i01) print *,'error  006'

print *,'pass'

end

function ifunc01(if01_arg01) result(irst01)
 use mod01
 character   :: if01_arg01
 type (ty01) :: irst01
 irst01 = ty01(ichar(if01_arg01))
end function

function ifunc02(if02_arg01) result(irst02)
 use mod01
 character   :: if02_arg01
 type (ty01) :: irst02
 irst02 = ty01(ichar(if02_arg01))
end function

function ifunc03(if03_arg01) result(irst03)
 type, bind(c) :: ty02
  integer :: i02
 end type
 character   :: if03_arg01
 type (ty02) :: irst03
 irst03 = ty02(ichar(if03_arg01))
end function

function ifunc04(if04_arg01) result(irst04)
 use mod01
 integer     :: if04_arg01
 type (ty01) :: irst04
 irst04 = ty01(if04_arg01)
end function
