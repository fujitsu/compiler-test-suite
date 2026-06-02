  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc,c_f_pointer
  type t1
     type(c_ptr) :: p
  end type t1
  type(t1) :: set
  integer,target::pp
  integer::kkk,fun
  real,pointer::a
  do kkk=1,fun()
     set%p=c_loc(pp)
      call c_f_pointer(set%p,a)
     if(.not.c_associated(set%p)) print *,'err1'
     if(.not.associated(a)) print *,'err2'
  enddo
  print *,'sngtiso016:pass'
end program
function fun() result(res)
  integer::res
  res=2
end function fun
