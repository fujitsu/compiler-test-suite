module mod01
 interface
  subroutine msub01()
  end subroutine
  function xfunc01() result(mrst01)
   real :: mrst01
  end function
 end interface
 contains
  subroutine m1sub01()
   entry m1s1ent01()
  end subroutine
  function m1func01() result(mrst01)
   real :: mrst01
   entry m1f1ent01() result(mrst01)
   mrst01 = 2.0
  end function
end module

print *,'pass'

end

recursive subroutine sub01(dsub01)
use mod01
interface
 subroutine osub01()
 end subroutine
 subroutine dsub01()
 end subroutine
end interface

entry s1_ent01()

procedure(osub01)     :: psub01
procedure(dsub01)     :: psub02
procedure(msub01)     :: psub03
procedure(m1sub01)    :: psub04
procedure(m1s1ent01)  :: psub05
procedure(s1_ent01)   :: psub06

procedure(osub01)    , pointer :: psub01p
procedure(dsub01)    , pointer :: psub02p
procedure(msub01)    , pointer :: psub03p
procedure(m1sub01)   , pointer :: psub04p
procedure(m1s1ent01) , pointer :: psub05p
procedure(s1_ent01)  , pointer :: psub06p

psub01p => psub01
psub02p => psub02
psub03p => psub03
psub04p => psub04
psub05p => psub05
psub06p => psub06

call csub01(osub01)
call csub01(dsub01)
call csub01(msub01)
call csub01(m1sub01)
call csub01(m1s1ent01)
call csub01(s1_ent01)

call csub01(psub01)
call csub01(psub02)
call csub01(psub03)
call csub01(psub04)
call csub01(psub05)
call csub01(psub06)

call csub01(psub01p)
call csub01(psub02p)
call csub01(psub03p)
call csub01(psub04p)
call csub01(psub05p)
call csub01(psub06p)

contains
 subroutine csub01(dsub01)
  interface
   subroutine dsub01()
   end subroutine
  end interface
 end subroutine
end subroutine

recursive function func01(dfunc01) result(rst)
use mod01
interface
 function ofunc01() result(orst)
  real :: orst
 end function
 function dfunc01() result(drst)
  real :: drst
 end function
end interface
real :: rst

entry f1_ent01() result(rst)

procedure(ofunc01)     :: pfunc01
procedure(dfunc01)     :: pfunc02
procedure(xfunc01)     :: pfunc03
procedure(m1func01)    :: pfunc04
procedure(m1f1ent01)   :: pfunc05
procedure(f1_ent01)    :: pfunc06

procedure(ofunc01)    , pointer :: pfunc01p
procedure(dfunc01)    , pointer :: pfunc02p
procedure(xfunc01)    , pointer :: pfunc03p
procedure(m1func01)   , pointer :: pfunc04p
procedure(m1f1ent01)  , pointer :: pfunc05p
procedure(f1_ent01)   , pointer :: pfunc06p

pfunc01p => pfunc01
pfunc02p => pfunc02
pfunc03p => pfunc03
pfunc04p => pfunc04
pfunc05p => pfunc05
pfunc06p => pfunc06

call csub02(ofunc01)
call csub02(dfunc01)
call csub02(xfunc01)
call csub02(m1func01)
call csub02(m1f1ent01)
call csub02(f1_ent01)

call csub02(pfunc01)
call csub02(pfunc02)
call csub02(pfunc03)
call csub02(pfunc04)
call csub02(pfunc05)
call csub02(pfunc06)

call csub02(pfunc01p)
call csub02(pfunc02p)
call csub02(pfunc03p)
call csub02(pfunc04p)
call csub02(pfunc05p)
call csub02(pfunc06p)

rst = 5.0

contains
 subroutine csub02(dfunc01)
  interface
   function dfunc01() result(drst)
    real :: drst
   end function
  end interface
 end subroutine
end function

subroutine msub01()
end subroutine

function xfunc01() result(mrst01)
 real :: mrst01
 mrst01 = 1.0
end function

subroutine osub01()
end subroutine

function ofunc01() result(orst)
 real :: orst
 orst = 3.0
end function

subroutine dsub01()
end subroutine

function dfunc01() result(drst)
 real :: drst
 drst = 4.0
end function

function pfunc01() result(prst)
 real :: prst
 prst = 1.0
end function

function pfunc02() result(prst)
 real :: prst
 prst = 2.0
end function

function pfunc03() result(prst)
 real :: prst
 prst = 3.0
end function

function pfunc04() result(prst)
 real :: prst
 prst = 4.0
end function

function pfunc05() result(prst)
 real :: prst
 prst = 5.0
end function

function pfunc06() result(prst)
 real :: prst
 prst = 6.0
end function

subroutine psub01()
end subroutine

subroutine psub02()
end subroutine

subroutine psub03()
end subroutine

subroutine psub04()
end subroutine

subroutine psub05()
end subroutine

subroutine psub06()
end subroutine
