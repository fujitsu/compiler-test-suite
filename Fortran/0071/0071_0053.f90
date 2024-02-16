module m1
  use iso_c_binding
contains
  type(c_funptr) function fun() result(zz)
       zz = c_null_funptr
  end function fun
  subroutine sub()
    type(c_funptr) :: fp
    fp = fun()
  end subroutine
end 
use m1
call sub
print *,'pass'
end

