call s1
print *,'sngtiso007:pass'
contains
subroutine s1
  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc
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
  integer,target::rr
  set3%set2%set%p1=c_null_ptr
  if(c_associated(set3%set2%set%p1)) print *,'err1' 
  set3%set2%set%p1=c_loc(rr)
  if(.not.c_associated(set3%set2%set%p1)) print *,'err2' 
end subroutine s1
end program
