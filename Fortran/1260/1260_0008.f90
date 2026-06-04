call s1
call s2
print *,'sngtiso009:pass'
contains
subroutine s1
  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc,c_f_pointer
  type(c_ptr) :: p
  real,pointer::a
  real,target::pp
  p=c_null_ptr
  call c_f_pointer(p,a)
  if(c_associated(p)) print *,'err1'
  if(associated(a)) print *,'err2'
  p=c_loc(pp)
  call c_f_pointer(p,a)
  if(.not.c_associated(p)) print *,'err3'
  if(.not.associated(a)) print *,'err4'
end subroutine s1
subroutine s2
  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc,c_f_pointer
  type t1
     type(c_ptr) :: p
  end type t1
  type(t1) :: set
  real,pointer::a
  real,target::pp
  set%p=c_null_ptr
  call c_f_pointer(set%p,a)
  if(c_associated(set%p)) print *,'err1'
  if(associated(a)) print *,'err2'
  set%p=c_loc(pp)
  call c_f_pointer(set%p,a)
  if(.not.c_associated(set%p)) print *,'err3'
  if(.not.associated(a)) print *,'err4'
end subroutine s2
end program
