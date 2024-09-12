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
    procedure(mapfn),pointer :: m
    type(c_funptr) :: fp

       fp = c_funloc(m)
   if (.not.c_associated(fp)) print *,201
       if (m()/=1) print *,302

    zz = 0
  end function foo

end module xxxf
use xxxf
    procedure(mapfn) :: mm
    procedure(mapfn),pointer :: mp
mp=>mm
if (foo(mp)/=0) print *,'202'
print *,'pass'
end

     integer(c_int) function mm() bind(c)
       use iso_c_binding
       implicit none
       mm=1
     end function mm