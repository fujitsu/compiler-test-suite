module mod01
 interface
  subroutine misub01() bind(c)
  end subroutine
  function mifunc01() bind(c) result(mirst01)
   integer :: mirst01
  end function
 end interface
 procedure(misub01),  bind(c, name = 'msb001') :: pmsub01
 procedure(mifunc01), bind(c, name = 'mfb001') :: pmfunc01
end module

use iso_c_binding
use mod01

procedure(),        pointer :: pprocp01
procedure(integer), pointer :: pprocp02
type (c_funptr)             :: cfptr

cfptr = cfunc01(pmsub01)

call c_f_procpointer(cfptr, pprocp01)

call pprocp01()

cfptr = cfunc02(pmfunc01)

call c_f_procpointer(cfptr, pprocp02)

if(pprocp02().ne.1) print *,'no pass'

print *,'pass'

contains

 function cfunc01(xxx)
  use iso_c_binding
  implicit none
  interface
   subroutine xxx() bind(C)
   end subroutine xxx
  end interface
  type(c_funptr) cfunc01
  cfunc01 = c_funloc(xxx)
 end function

 function cfunc02(yyy)
  use iso_c_binding
  implicit none
  interface
   function yyy() bind(c) result(rst)
    integer :: rst
   end function
  end interface
  type(c_funptr) cfunc02
  cfunc02 = c_funloc(yyy)
 end function

end

subroutine pmsub01() bind(c, name = 'msb001')
end subroutine

function pmfunc01() bind(c, name = 'mfb001') result(m1rst01)
 integer m1rst01
 m1rst01 = 1
end function
