module m1
  use iso_c_binding
contains
  type(c_funptr) function fun() result(zz)
       zz = c_null_funptr
  end function fun
  subroutine foo() 
    call xx(fun())
  end subroutine
  subroutine xx(fp) 
    type(c_funptr) :: fp
    if (c_associated(fp)) print *,301
  end subroutine
end 
use m1
call foo
print *,'pass'
end
