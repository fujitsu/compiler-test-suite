  use iso_c_binding, only:c_funptr,c_associated,c_funloc,c_f_procpointer
  type t1
     type(c_funptr),allocatable :: p(:)
  end type t1
  type(t1) :: set
  integer::kkk,fun
  interface
     function func(arga) bind(c)
     end function func
  end interface
  procedure(func),pointer:: arg2=>null()
  allocate(set%p(2))
  do kkk=1,fun()
     arg2=>func
     set%p(kkk)=c_funloc(arg2)
      call c_f_procpointer(set%p(kkk),arg2)
     if(.not.c_associated(set%p(kkk))) print *,'err1'
     if(.not.associated(arg2)) print *,'err2'
  enddo
  print *,'sngtiso023:pass'
end program
function fun() result(res)
  integer::res
  res=2
end function fun
function func(arga) bind(c) result(argb)
  argb=arga
end function func
