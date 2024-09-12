module xxxf
  use iso_c_binding
  implicit none
  abstract interface
     integer(c_int) function mapfn(p) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value, intent(in) :: p
     end function mapfn
  end interface

contains

  integer(c_int) function foo(m) result(zz)
    procedure(mapfn) :: m
    type(c_funptr) :: fp

       fp = c_funloc(m)
   if (.not.c_associated(fp)) print *,201

    zz = 0
  end function foo

end module xxxf
use xxxf
    procedure(mapfn) :: mm
if (foo(mm)/=0) print *,'202'
print *,'pass'
end

     integer(c_int) function mm(p) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value, intent(in) :: p
       mm=0
     end function mm
