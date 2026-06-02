  use iso_c_binding, only:c_funptr, c_f_procpointer,c_float,c_funloc,c_associated
  type t1
     type(c_funptr) :: p
  end type t1
  type(t1) :: set
  interface
     function func(arga) bind(c)
     end function func
  end interface
  procedure(func),pointer:: arg2=>null()
  call sub(set%p)
  call c_f_procpointer(set%p,arg2)
  if(c_associated(set%p)) print *,'err1'
  if(associated(arg2)) print *,'err2'
  call sub1(set%p)
  call c_f_procpointer(set%p,arg2)
  if(.not.c_associated(set%p)) print *,'err3'
  if(.not.associated(arg2)) print *,'err4'
  print *,'sngtiso014:pass'
end program
 subroutine sub(x)
  use iso_c_binding, only:c_funptr,c_null_funptr
   type(c_funptr) :: x
   x=c_null_funptr
 end subroutine sub
 subroutine sub1(x)
  use iso_c_binding, only:c_funptr,c_null_funptr,c_funloc
   type(c_funptr) :: x
  interface
     function func(arga) bind(c)
     end function func
  end interface
   x=c_funloc(func)
 end subroutine sub1
function func(arga) bind(c) result(argb)
  argb=arga
end function func
