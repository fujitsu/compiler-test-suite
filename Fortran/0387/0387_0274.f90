module mod01
 contains
  function m1func01() result(m1rst01)
   procedure(integer), pointer :: m1rst01
   entry m1ent01() result(m1rst01)
   m1rst01 => null()
  end function
end module

use mod01

type ty01
 procedure(integer), pointer, nopass :: pprocp01
end type

type ty02
 procedure(m1ent01), pointer, nopass :: pm1entp01
end type

type (ty01) :: tt01
type (ty02) :: tt02

procedure(integer), pointer :: pprocp01
procedure(m1ent01)          :: pm1ent01
procedure(m1ent01), pointer :: pm1entp01

pm1entp01 => m1ent01
pm1entp01 => pm1ent01
pm1entp01 => pm1entp01

tt02      =  ty02(m1ent01)
tt02      =  ty02(pm1ent01)
tt02      =  ty02(pm1entp01)

pprocp01  => m1ent01()
pprocp01  => pm1ent01()
pprocp01  => pm1entp01()
pprocp01  => tt02%pm1entp01()

tt01      =  ty01(m1ent01())
tt01      =  ty01(pm1ent01())
tt01      =  ty01(pm1entp01())
tt01      =  ty01(tt02%pm1entp01())

call csub01(m1ent01)
call csub01(pm1ent01)
call csub01(pm1entp01)

call csub02(pm1entp01)

call csub03(m1ent01())
call csub03(pm1ent01())
call csub03(pm1entp01())
call csub03(tt02%pm1entp01())

print *,'pass'

contains
 subroutine csub01(pm1ent01)
  procedure(m1ent01)          :: pm1ent01
 end subroutine
 subroutine csub02(pm1entp01)
  procedure(m1ent01), pointer :: pm1entp01
 end subroutine
 subroutine csub03(pprocp01)
  procedure(integer), pointer :: pprocp01
 end subroutine
end

function pm1ent01() result(rst01)
 procedure(integer), pointer :: rst01
 rst01 => null()
end function
