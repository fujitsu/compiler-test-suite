module xxxf
  use iso_c_binding
  implicit none

  public

contains

  type(c_funptr) function fun() result(zz)
       zz = c_null_funptr
  end function fun

  integer(c_int) function foo() result(zz)
    type(c_funptr) :: fp

    fp = fun()!
if (c_associated(fp)) print *,301

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

