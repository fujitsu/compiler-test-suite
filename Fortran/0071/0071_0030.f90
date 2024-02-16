module xxxf
  use iso_c_binding
  implicit none
contains
  function kmr_fixfun() result(zz)
  type(c_funptr) ::zz(3)
       zz = c_null_funptr
  end function 

  integer(c_int) function foo() result(zz)
    type(c_funptr) :: fp(3)

    fp = kmr_fixfun()!
if (c_associated(fp(1))) print *,301
if (c_associated(fp(2))) print *,301
if (c_associated(fp(3))) print *,301

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

