module m1
  use iso_c_binding
contains
  type(c_funptr) function fun() result(zz) bind(c)
  entry fun11() result(zz) bind(c)
       zz = c_null_funptr
  end function 
  type(c_funptr) function fun1() result(zz) bind(c)
  entry fun12()  result(zz) bind(c)
       zz = c_null_funptr
  end function 
  subroutine foo() 
    type(c_funptr) :: fp
    fp = fun()
    if (c_associated(fp)) print *,301
    fp = fun1()
    if (c_associated(fp)) print *,301
    fp = fun2()
    if (c_associated(fp)) print *,301
    fp = fun3()
    if (c_associated(fp)) print *,301
    fp = fun11()
    if (c_associated(fp)) print *,301
    fp = fun12()
    if (c_associated(fp)) print *,301
    fp = fun13()
    if (c_associated(fp)) print *,301
    fp = fun14()
    if (c_associated(fp)) print *,301
  end subroutine
  type(c_funptr) function fun2() result(zz) bind(c)
  entry fun13() result(zz) bind(c)
       zz = c_null_funptr
  end function 
  type(c_funptr) function fun3() result(zz) bind(c)
  entry fun14() result(zz) bind(c)
       zz = c_null_funptr
  end function 
end 
use m1
call foo
print *,'pass'
end
