  use iso_c_binding, only:c_funptr,c_null_funptr, c_associated,c_funloc
  type t1
     type(c_funptr) :: p1,p2
  end type t1
  type(t1) :: set
interface
 function rr() bind(c)
 end function
end interface
  set%p1=c_null_funptr
  set%p2=c_null_funptr
  if(c_associated(set%p1,set%p2).neqv..false.) print *,'err1' 
  set%p1=c_funloc(rr)
  set%p2=c_funloc(rr)
  if(c_associated(set%p1,set%p2).neqv..true.) print *,'err2' 
  print *,'sngtiso002:pass'
end program
 function rr() bind(c)
 end function
