module m1
  use iso_c_binding
contains
  type(c_ptr) function fun() result(zz)
       zz = c_null_ptr
  end function 
  type(c_ptr) function fun1() result(zz)
       zz = c_null_ptr
  end function 
  subroutine foo() 
    type(c_ptr) :: fp
    fp = fun()
    if (c_associated(fp)) print *,301
    fp = fun1()
    if (c_associated(fp)) print *,301
    fp = fun2()
    if (c_associated(fp)) print *,301
    fp = fun3()
    if (c_associated(fp)) print *,301
  end subroutine
  type(c_ptr) function fun2() result(zz)
       zz = c_null_ptr
  end function 
  type(c_ptr) function fun3() result(zz)
       zz = c_null_ptr
  end function 
end 
use m1
call foo
print *,'pass'
end
