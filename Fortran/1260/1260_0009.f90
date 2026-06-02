call s1
print *,'sngtiso010:pass'
contains
subroutine s1
  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc,c_f_pointer
  type t1
     type(c_ptr) :: p1
  end type t1
  type t2
  type(t1) :: set
  end type
  type t3
  type(t2)::set2
  end type
  type(t3)::set3
 real,pointer::a
  real,target::pp
  set3%set2%set%p1=c_null_ptr
  call c_f_pointer(set3%set2%set%p1,a)
  if(c_associated(set3%set2%set%p1)) print *,'err1'
  if(associated(a)) print *,'err2'
  set3%set2%set%p1=c_loc(pp)
  call c_f_pointer(set3%set2%set%p1,a)
  if(.not.c_associated(set3%set2%set%p1)) print *,'err3'
  if(.not.associated(a)) print *,'err4'
end subroutine s1
end program
