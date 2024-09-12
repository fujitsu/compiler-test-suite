module mod01
 contains
  function m1func01() result(mrst01)
   procedure(integer) , pointer :: mrst01
  end function
  function m1func02(di01) result(mrst02)
   integer :: di01
   procedure(integer) , pointer :: mrst02
   entry ent01(di01) result(mrst02)
  end function
end module

use mod01

interface xfunc
 module procedure ent01,m1func01
end interface

interface
 function ifunc01() result(irst01)
  character :: irst01
 end function
end interface

procedure(ifunc01), pointer :: pprocp01
type ty01
 procedure(ifunc01), pointer, nopass :: pprocp01
end type
type (ty01) :: tt01

procedure(integer), pointer :: pp

procedure(integer) :: pi1
procedure() :: pi2
integer     :: pi2
integer     :: pi3
procedure() :: pi3

pp => pi1
pp => pi2
pp => pi3

print *,'pass'

end

function pi1()
 integer :: pi1
 pi1 = 1
end function

function pi2()
 integer :: pi2
 pi2 = 2
end function

function pi3()
 integer :: pi3
 pi3 = 3
end function
