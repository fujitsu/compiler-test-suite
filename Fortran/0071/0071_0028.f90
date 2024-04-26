module y
  use iso_c_binding
contains
  type(c_ptr) function kmr_fixfun0() result(zz) bind(c)
entry kmr_fixfun2() result(zz) bind(c)
entry kmr_fixfun() result(zz)
entry kmr_fixfun1() result(zz)
       zz = c_null_ptr
  end function 
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
