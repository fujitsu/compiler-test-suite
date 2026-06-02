  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc
  type t1
     type(c_ptr) :: p1
  end type t1
  type(t1) :: set
  integer,target::rr
  call sub(set%p1)
  if(c_associated(set%p1)) print *,'err1' 
  set%p1=c_loc(rr)
  if(.not.c_associated(set%p1)) print *,'err2' 
  print *,'sngtiso008:pass'
end program
 subroutine sub(x)
  use iso_c_binding, only:c_ptr,c_null_ptr
   type(c_ptr) :: x
   x=c_null_ptr
 end subroutine sub
