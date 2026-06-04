call s1
print *,'sngtiso013:pass'
contains
subroutine s1
  use iso_c_binding, only:c_funptr, c_null_funptr, c_f_procpointer,c_float,c_funloc,c_associated
  type t1
     type(c_funptr) :: p
  end type t1
  type t2
  type(t1) :: set
  end type
  type t3
  type(t2)::set2
  end type
  type(t3)::set3
  interface
     function func(arga) bind(c)
     end function func
  end interface
  procedure(func),pointer:: arg2=>null()
  set3%set2%set%p=c_null_funptr
  call c_f_procpointer(set3%set2%set%p,arg2)
  if(c_associated(set3%set2%set%p)) print *,'err1'
  if(associated(arg2)) print *,'err2'
  arg2=>func
  set3%set2%set%p=c_funloc(arg2)
  call c_f_procpointer(set3%set2%set%p,arg2)
  if(.not.c_associated(set3%set2%set%p)) print *,'err3'
  if(.not.associated(arg2)) print *,'err4'
end subroutine s1
end program
function func(arga) bind(c) result(argb)
  argb=arga
end function func
