module y
  use iso_c_binding
contains
  type(c_ptr) function kmr_fixfun() result(zz)
       zz = c_null_ptr
  end function kmr_fixfun
end 

module xxxf
use y
  implicit none
  public
contains

  integer(c_int) function foo() result(zz)
    type(c_ptr) :: fp

    fp = kmr_fixfun()
    if (c_associated(fp)) print *,101

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end
