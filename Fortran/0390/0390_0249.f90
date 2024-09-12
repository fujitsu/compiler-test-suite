subroutine sub1
  use iso_c_binding
  call sub
contains
  type(c_funptr) function fun() result(zz)
       zz = c_null_funptr
  end function fun
  subroutine sub()
    type(c_funptr) :: fp
    fp = fun()
    if (c_associated(fp)) print *,101
  end subroutine
end 
call sub1
print *,'pass'
end

