module xxxf
  use iso_c_binding
  implicit none
contains


  integer(c_int) function foo() result(zz)
    type(c_funptr) :: fp

       fp = c_funloc(mm)
   if (.not.c_associated(fp)) print *,201
       if (mm()/=1) print *,302
       fp = c_funloc(nn)
   if (.not.c_associated(fp)) print *,202
       if (mm()/=1) print *,303

    zz = 0
  end function foo

     integer(c_int) function mm() bind(c)
     integer(c_int) nn       
       mm=1
       return 
      entry nn() bind(c)
       nn=1
     end function mm

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

