module xxxf
  use iso_c_binding
  implicit none
  abstract interface
     integer(c_int) function mapfn() bind(c)
       use iso_c_binding
       implicit none
     end function mapfn
  end interface

contains

  integer(c_int) function foo(m) result(zz)
interface
     integer(c_int) function m() bind(c)
       use iso_c_binding
       implicit none
     end function m
  end interface
    type(c_funptr) :: fp

       if (m()/=1) print *,303

    zz = 0
  end function foo

end module xxxf
use xxxf
    procedure(mapfn) :: mm
if (foo(mm)/=0) print *,'202'
print *,'pass'
end

     integer(c_int) function mm() bind(c)
       use iso_c_binding
       implicit none
       mm=1
     end function mm
