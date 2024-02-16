module xxxf
  use iso_c_binding
  implicit none

  public

  abstract interface
     integer(c_int) function mapfn(p) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value, intent(in) :: p
     end function mapfn
  end interface

contains

  type(c_funptr) function kmr_fixfun2(fp) result(zz)
  entry kmr_fixfun(fp) result(zz)
  entry kmr_fixfun3(fp) result(zz)
    type(c_funptr), value, intent(in) :: fp
       zz = fp
  end function kmr_fixfun2

  integer(c_int) function foo() result(zz)
    procedure(mapfn) :: m
    type(c_funptr) :: fp

    fp =            c_funloc(m)!
    fp = kmr_fixfun(c_funloc(m))!

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

     integer(c_int) function m(p) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value, intent(in) :: p
       m=0
     end function m
