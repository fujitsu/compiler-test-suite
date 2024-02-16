module xxxf
  use iso_c_binding
  implicit none

  public

contains

  type(c_funptr) function kmr_fixfun4() result(zz) bind(c)
entry kmr_fixfun3() result(zz)
entry kmr_fixfun2() result(zz)
entry kmr_fixfun() result(zz) bind(c)
entry kmr_fixfun1() result(zz)
       zz = c_null_funptr
  end function

  integer(c_int) function foo() result(zz)
    type(c_funptr) :: fp

    fp = kmr_fixfun()!
 if (c_associated(fp)) print *,301

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

