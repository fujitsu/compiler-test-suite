module xxxf
  use iso_c_binding
  implicit none
  interface
     integer(c_int) function mm() bind(c)
       use iso_c_binding
       implicit none
     end function mm
  end interface

contains

  integer(c_int) function foo() result(zz)
    type(c_funptr) :: fp

       fp = c_funloc(mm)
   if (.not.c_associated(fp)) print *,201
       if (mm()/=1) print *,302

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

     integer(c_int) function mm() bind(c)
       use iso_c_binding
       implicit none
       mm=1
     end function mm
