module m1
  use iso_c_binding
contains
  recursive function fun(k) result(zz)
  type(c_ptr) :: zz
   k=k+1
    if (k==3) then
       zz = c_null_ptr
    else 
       zz = fun(k)
    endif
  end function 
  recursive function fun1(k) result(zz)
  type(c_ptr) :: zz
   k=k+1
    if (k==3) then
       zz = c_null_ptr
    else 
       zz = fun(k)
    endif
  end function 
  type(c_ptr) function fun1x() result(zz)
       zz = c_null_ptr
  end function 
  subroutine foo() 
    type(c_ptr) :: fp
    k=0
    fp = fun(k)
    if (c_associated(fp)) print *,301
    k=0
    fp = fun1(k)
    if (c_associated(fp)) print *,301
    k=0
    fp = fun2(k)
    if (c_associated(fp)) print *,301
    k=0
    fp = fun3(k)
    if (c_associated(fp)) print *,301
  end subroutine
  recursive function fun3(k) result(zz)
  type(c_ptr) :: zz
   k=k+1
    if (k==3) then
       zz = c_null_ptr
    else 
       zz = fun(k)
    endif
  end function 
  type(c_ptr) function fun2x() result(zz)
       zz = c_null_ptr
  end function 
  recursive function fun2(k) result(zz)
  type(c_ptr) :: zz
   k=k+1
    if (k==3) then
       zz = c_null_ptr
    else 
       zz = fun(k)
    endif
  end function 
  type(c_ptr) function fun3x() result(zz)
       zz = c_null_ptr
  end function 
end 
use m1
call foo
print *,'pass'
end
