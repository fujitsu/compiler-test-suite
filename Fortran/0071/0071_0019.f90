module xxxf
  use iso_c_binding
  implicit none

  public

contains

  type(c_ptr) function kmr_fixfun3() result(zz)
entry kmr_fixfun() result(zz)
entry kmr_fixfun2() result(zz)

       zz = c_null_ptr
  end function 

  subroutine sub(fp2,fp4)
    type(c_ptr) :: fp2,fp3
    type(c_ptr),value :: fp4
    fp3=fp2
if (c_associated(fp3)) print *,201
    fp3=fp4
if (c_associated(fp3)) print *,201
  end subroutine

  integer(c_int) function foo() result(zz)
    type(c_ptr) :: fp,fp2=c_null_ptr 

    call sub(fp2,fp2)
    fp=fp2
    fp = kmr_fixfun()
 if (c_associated(fp)) print *,301

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end
