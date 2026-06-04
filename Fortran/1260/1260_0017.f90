  use iso_c_binding, only:c_ptr,c_null_ptr, c_associated,c_loc
  type t1
     type(c_ptr) :: p(2)
  end type t1
  type(t1) :: set
  integer,target::pp
  integer::kkk,fun
  do kkk=1,fun()
     set%p(kkk)=c_loc(pp)
     if(c_associated(set%p(kkk),c_loc(pp)).neqv..true.) print *,'err1'
  enddo
  print *,'sngtiso018:pass'
end program
function fun() result(res)
  integer::res
  res=2
end function fun
