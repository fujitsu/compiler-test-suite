module xxxf
  use iso_c_binding
  implicit none
contains

     integer(c_int) function mm() bind(c)
     integer(c_int) nn       
       mm=1
       return 
     end function mm
     function mmx() result(r)
    procedure(mm),pointer :: r
    r=> mm
     end function

  integer(c_int) function foo() result(zz)
    type(c_funptr) :: fp

       fp = c_funloc(mmx())
   if (.not.c_associated(fp)) print *,201
       if (mm()/=1) print *,302
    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

