call s1
call s2
print *,'sngtiso012:pass'
contains
subroutine s1
  use iso_c_binding, only:c_funptr, c_null_funptr, c_f_procpointer,c_float,c_funloc,c_associated
  type(c_funptr) :: p
  interface
     function func(arga) bind(c)
     end function func
  end interface
  procedure(func),pointer:: arg2=>null()
  p=c_null_funptr
  call c_f_procpointer(p,arg2)
  if(c_associated(p)) print *,'err1'
  if(associated(arg2)) print *,'err2'
  arg2=>func
  p=c_funloc(arg2)
  call c_f_procpointer(p,arg2)
  if(.not.c_associated(p)) print *,'err3'
  if(.not.associated(arg2)) print *,'err4'
end subroutine s1
subroutine s2
  use iso_c_binding, only:c_funptr, c_null_funptr, c_f_procpointer,c_float,c_funloc,c_associated
  type t1
     type(c_funptr) :: p
  end type t1
  interface
     function func(arga) bind(c)
     end function func
  end interface
  procedure(func),pointer:: arg2=>null()
  type(t1) :: set
  set%p=c_null_funptr
  call c_f_procpointer(set%p,arg2)
  if(c_associated(set%p)) print *,'err1'
  if(associated(arg2)) print *,'err2'
  arg2=>func
  set%p=c_funloc(arg2)
  call c_f_procpointer(set%p,arg2)
  if(.not.c_associated(set%p)) print *,'err3'
  if(.not.associated(arg2)) print *,'err4'
end subroutine s2
end program
function func(arga) bind(c) result(argb)
  argb=arga
end function func
