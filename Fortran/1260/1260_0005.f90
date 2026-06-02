  use iso_c_binding, only:c_funptr,c_null_funptr, c_associated,c_funloc
  type t1
     type(c_funptr) :: p1
  end type t1
  type(t1) :: set
interface
 function rr() bind(c)
 end function
end interface
  set%p1=c_null_funptr
  if(c_associated(set%p1)) print *,'err1' 
  set%p1=c_funloc(rr)
  if(.not.c_associated(set%p1)) print *,'err2' 
  print *,'sngtiso006:pass'
end program
 function rr() bind(c)
 end function
