call s1
call s2
print *,'sngtiso005:pass'
contains
subroutine s1
  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc
     type(c_ptr) :: p1
  integer,target::rr
  p1=c_null_ptr
  if(c_associated(p1)) print *,'err1' 
  p1=c_loc(rr)
  if(.not.c_associated(p1)) print *,'err2' 
end subroutine s1
subroutine s2
  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc
  type t1
     type(c_ptr) :: p1
  end type t1
  type(t1) :: set
  integer,target::rr
  set%p1=c_null_ptr
  if(c_associated(set%p1).neqv..false.) print *,'err1' 
  set%p1=c_loc(rr)
  if(c_associated(set%p1).neqv..true.) print *,'err2' 
end subroutine s2
end program
