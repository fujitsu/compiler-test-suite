module m1
  use iso_c_binding
contains
  type(c_funptr) function fun() result(zz)
  entry fun11() result(zz)
  entry fun21() result(zz)
  entry fun31() result(zz)
       zz = c_null_funptr
  end function 
  type(c_funptr) function fun1() result(zz)
  entry fun12()  result(zz)
  entry fun22()  result(zz)
  entry fun32()  result(zz)
       zz = c_null_funptr
  end function 
  subroutine foo() 
    type(c_funptr) :: fp
    fp = fun()!
    if (c_associated(fp)) print *,301
    fp = fun1()!
    if (c_associated(fp)) print *,301
    fp = fun2()!
    if (c_associated(fp)) print *,301
    fp = fun3()!
    if (c_associated(fp)) print *,301
    fp = fun11()!
    if (c_associated(fp)) print *,301
    fp = fun12()!
    if (c_associated(fp)) print *,301
    fp = fun13()!
    if (c_associated(fp)) print *,301
    fp = fun14()!
    if (c_associated(fp)) print *,301
    fp = fun21()!
    if (c_associated(fp)) print *,301
    fp = fun22()!
    if (c_associated(fp)) print *,301
    fp = fun23()!
    if (c_associated(fp)) print *,301
    fp = fun24()!
    if (c_associated(fp)) print *,301
    fp = fun31()!
    if (c_associated(fp)) print *,301
    fp = fun32()!
    if (c_associated(fp)) print *,301
    fp = fun33()!
    if (c_associated(fp)) print *,301
    fp = fun34()!
    if (c_associated(fp)) print *,301
  end subroutine
  type(c_funptr) function fun2() result(zz)
  entry fun13() result(zz)
  entry fun23() result(zz)
  entry fun33() result(zz)
       zz = c_null_funptr
  end function 
  type(c_funptr) function fun3() result(zz)
  entry fun14() result(zz)
  entry fun24() result(zz)
  entry fun34() result(zz)
       zz = c_null_funptr
  end function 
end 
use m1
call foo
print *,'pass'
end

