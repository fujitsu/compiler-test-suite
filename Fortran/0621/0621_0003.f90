module mod01
 contains
  subroutine msub01(i) bind(c, name = 'ms01')
   integer :: i
   entry ms01_ent01(i) bind(c)
   entry ms01_ent02(i) bind(c, name = 'ms01e02')
  end subroutine
  subroutine msub02(i) bind(c)
   integer :: i
   entry ms02_ent01(i) bind(c)
   entry ms02_ent02(i) bind(c, name = 'ms02e02')
  end subroutine
  subroutine msub03(msub04)
   interface
    subroutine msub04(i) bind(c)
     integer :: i
    end subroutine
   end interface
  end subroutine
  subroutine msub04(i) bind(c)
   integer :: i
  end subroutine
  function func01()
   procedure(msub01), pointer :: func01
   func01 => msub01
  end function
  function func02()
   procedure(ms01_ent01), pointer :: func02
   func02 => ms01_ent01
  end function
  function func03()
   procedure(ms01_ent02), pointer :: func03
   func03 => ms01_ent02
  end function
  function func04()
   procedure(msub02), pointer :: func04
   func04 => msub02
  end function
  function func05()
   procedure(ms02_ent01), pointer :: func05
   func05 => ms02_ent01
  end function
  function func06()
   procedure(ms02_ent02), pointer :: func06
   func06 => ms02_ent02
  end function
  subroutine msub05()
   procedure(msub01), pointer :: psub01p
   procedure(msub01)          :: psub01

   call msub03(msub01)
   call msub03(ms01_ent01)
   call msub03(ms01_ent02)
   call msub03(msub02)
   call msub03(ms02_ent01)
   call msub03(ms02_ent02)

   call msub03(psub01p)
   call msub03(psub01)
   call msub03(func01())
   call msub03(func02())
   call msub03(func03())
   call msub03(func04())
   call msub03(func05())
   call msub03(func06())
  end subroutine
end module

use mod01

interface
 subroutine osub01(dsub01)
  interface
   subroutine dsub01(i) bind(c)
    integer :: i
   end subroutine
  end interface
 end subroutine
 function ofunc01()
  use mod01
  procedure(msub01), pointer :: ofunc01
 end function
 function ofunc02()
  use mod01
  procedure(ms01_ent01), pointer :: ofunc02
 end function
 function ofunc03()
  use mod01
  procedure(ms01_ent02), pointer :: ofunc03
 end function
 function ofunc04()
  use mod01
  procedure(msub02), pointer :: ofunc04
 end function
 function ofunc05()
  use mod01
  procedure(ms02_ent01), pointer :: ofunc05
 end function
 function ofunc06()
  use mod01
  procedure(ms02_ent02), pointer :: ofunc06
 end function
end interface

procedure(ofunc01) :: pfunc01
procedure(ofunc02) :: pfunc02
procedure(ofunc03) :: pfunc03
procedure(ofunc04) :: pfunc04
procedure(ofunc05) :: pfunc05
procedure(ofunc06) :: pfunc06

procedure(ofunc01), pointer :: pfunc01p
procedure(ofunc02), pointer :: pfunc02p
procedure(ofunc03), pointer :: pfunc03p
procedure(ofunc04), pointer :: pfunc04p
procedure(ofunc05), pointer :: pfunc05p
procedure(ofunc06), pointer :: pfunc06p

pfunc01p => pfunc01
pfunc02p => pfunc02
pfunc03p => pfunc03
pfunc04p => pfunc04
pfunc05p => pfunc05
pfunc06p => pfunc06

call osub01(msub01)
call osub01(ms01_ent01)
call osub01(ms01_ent02)
call osub01(msub02)
call osub01(ms02_ent01)
call osub01(ms02_ent02)

call osub01(ofunc01())
call osub01(ofunc02())
call osub01(ofunc03())
call osub01(ofunc04())
call osub01(ofunc05())
call osub01(ofunc06())

call osub01(pfunc01())
call osub01(pfunc02())
call osub01(pfunc03())
call osub01(pfunc04())
call osub01(pfunc05())
call osub01(pfunc06())

call osub01(pfunc01p())
call osub01(pfunc02p())
call osub01(pfunc03p())
call osub01(pfunc04p())
call osub01(pfunc05p())
call osub01(pfunc06p())

call osub01(cfunc01())
call osub01(cfunc02())
call osub01(cfunc03())
call osub01(cfunc04())
call osub01(cfunc05())
call osub01(cfunc06())

print *,'pass'

contains
 function cfunc01()
  use mod01
  procedure(msub01), pointer :: cfunc01
  cfunc01 => msub01
 end function
 function cfunc02()
  use mod01
  procedure(ms01_ent01), pointer :: cfunc02
  cfunc02 => ms01_ent01
 end function
 function cfunc03()
  use mod01
  procedure(ms01_ent02), pointer :: cfunc03
  cfunc03 => ms01_ent02
 end function
 function cfunc04()
  use mod01
  procedure(msub02), pointer :: cfunc04
  cfunc04 => msub02
 end function
 function cfunc05()
  use mod01
  procedure(ms02_ent01), pointer :: cfunc05
  cfunc05 => ms02_ent01
 end function
 function cfunc06()
  use mod01
  procedure(ms02_ent02), pointer :: cfunc06
  cfunc06 => ms02_ent02
 end function
end

subroutine psub01(i) bind(c)
 integer :: i
end subroutine
subroutine osub01(dsub01)
 interface
  subroutine dsub01(i) bind(c)
   integer :: i
  end subroutine
 end interface
end subroutine
subroutine dsub01(i) bind(c)
 integer :: i
end subroutine
function ofunc01()
 use mod01
 procedure(msub01), pointer :: ofunc01
 ofunc01 => msub01
end function
function ofunc02()
 use mod01
 procedure(ms01_ent01), pointer :: ofunc02
 ofunc02 => ms01_ent01
end function
function ofunc03()
 use mod01
 procedure(ms01_ent02), pointer :: ofunc03
 ofunc03 => ms01_ent02
end function
function ofunc04()
 use mod01
 procedure(msub02), pointer :: ofunc04
 ofunc04 => msub02
end function
function ofunc05()
 use mod01
 procedure(ms02_ent01), pointer :: ofunc05
 ofunc05 => ms02_ent01
end function
function ofunc06()
 use mod01
 procedure(ms02_ent02), pointer :: ofunc06
 ofunc06 => ms02_ent02
end function

function pfunc01()
 use mod01
 procedure(msub01), pointer :: pfunc01
 pfunc01 => msub01
end function
function pfunc02()
 use mod01
 procedure(ms01_ent01), pointer :: pfunc02
 pfunc02 => ms01_ent01
end function
function pfunc03()
 use mod01
 procedure(ms01_ent02), pointer :: pfunc03
 pfunc03 => ms01_ent02
end function
function pfunc04()
 use mod01
 procedure(msub02), pointer :: pfunc04
 pfunc04 => msub02
end function
function pfunc05()
 use mod01
 procedure(ms02_ent01), pointer :: pfunc05
 pfunc05 => ms02_ent01
end function
function pfunc06()
 use mod01
 procedure(ms02_ent02), pointer :: pfunc06
 pfunc06 => ms02_ent02
end function
