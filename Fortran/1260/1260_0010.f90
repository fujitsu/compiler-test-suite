  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_f_pointer
  type t1
     type(c_ptr) :: p
  end type t1
  type(t1) :: set
  real,pointer::a
  call sub(set%p)
  call c_f_pointer(set%p,a)
  if(c_associated(set%p)) print *,'err1'
  if(associated(a)) print *,'err2'
  call sub1(set%p)
  call c_f_pointer(set%p,a)
  if(.not.c_associated(set%p)) print *,'err3'
  if(.not.associated(a)) print *,'err4'
  print *,'sngtiso011:pass'
end program
 subroutine sub(x)
  use iso_c_binding, only:c_ptr,c_null_ptr
   type(c_ptr) :: x
   x=c_null_ptr
 end subroutine sub
 subroutine sub1(x)
  use iso_c_binding, only:c_ptr,c_null_ptr,c_loc
   type(c_ptr) :: x
   real,target::rr
   x=c_loc(rr)
 end subroutine sub1
