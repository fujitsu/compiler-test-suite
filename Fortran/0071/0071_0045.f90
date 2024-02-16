module m1
  use iso_c_binding
contains
  type(c_ptr) function fun() result(zz) bind(c)
  entry fun11() result(zz) bind(c)
  entry fun21() result(zz) bind(c)
  entry fun31() result(zz) bind(c)
       zz = c_null_ptr
  end function 
  type(c_ptr) function fun1() result(zz) bind(c)
  entry fun12()  result(zz) bind(c)
  entry fun22()  result(zz) bind(c)
  entry fun32()  result(zz) bind(c)
       zz = c_null_ptr
  end function 
  subroutine foo() 
    type(c_ptr) :: fp
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
  type(c_ptr) function fun2() result(zz) bind(c)
  entry fun13() result(zz) bind(c)
  entry fun23() result(zz) bind(c)
  entry fun33() result(zz) bind(c)
       zz = c_null_ptr
  end function 
  type(c_ptr) function fun3() result(zz) bind(c)
  entry fun14() result(zz) bind(c)
  entry fun24() result(zz) bind(c)
  entry fun34() result(zz) bind(c)
       zz = c_null_ptr
  end function 
end 
use m1
call foo
print *,'pass'
end

