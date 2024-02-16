module m1
  use iso_c_binding
contains
  subroutine foo() 
    type(c_funptr) :: fp
    fp = fun()!
    if (c_associated(fp)) print *,201
  end subroutine
  type(c_funptr) function fun() result(zz)
       zz = c_null_funptr
  end function fun
end 
use m1
call foo
print *,'pass'
end

