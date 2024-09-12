module mod1
 contains
  function m1func1() result(rst)
   rst=1
  end function
end module

module mod2
 procedure(m2func1),pointer :: pmod2
 contains
  function m2func1() result(rstm2)
   use mod1
   procedure(m1func1),pointer :: rstm2
   rstm2=>m1func1
  end function
end module

use mod1
use mod2

interface
 function func1() result(rst_func1)
  use mod1
  procedure(m1func1),pointer :: rst_func1
 end function
end interface

type ty1
 procedure(func1),nopass,pointer :: tpt
end type

procedure(m1func1),pointer :: pm1fp

type(ty1) :: tt

tt=ty1(func1)
tt%tpt => func1

tt=ty1(func1)

pm1fp =>tt%tpt()

if (pm1fp().ne.1) print *,'error'

print *,'pass'

end

function func1() result(rst_func1)
 use mod1
 procedure(m1func1),pointer :: rst_func1
 rst_func1=>m1func1
end function
