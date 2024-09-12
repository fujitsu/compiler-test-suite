module mod1
 type t1
  integer::i1
  contains
  procedure,NOPASS :: prc1 => fun1
  procedure,NOPASS :: prc2 => fun2
  procedure,NOPASS :: prc3 => fun3
 end type

 type(t1) :: obj

 contains
 function fun1(dmy1)
  class(t1),allocatable::fun1
  integer::dmy1
  allocate(fun1)
  fun1%i1=dmy1
 end function

 function fun2(dmy1)
  class(t1),pointer::fun2
  integer::dmy1
  class(t1),allocatable,target :: local
  allocate(local)
  fun2=>local
  fun2%i1=dmy1
 end function

 function fun3(dmy1)
  class(*),pointer::fun3
  integer::dmy1
  class(t1),allocatable,target :: local
  allocate(local)
  local%i1=dmy1
  fun3=>local
 end function
end module

program main
 use mod1
 type tstc
  class(t1),allocatable :: f1
  class(t1),pointer :: f2
  class(*),pointer :: f3
 end type

 type(tstc)::stc
 stc=tstc(obj%prc1(5),obj%prc2(5),obj%prc3(5))
 if(stc%f1%i1 == 5 .and. stc%f2%i1 == 5) then
  print*,'PASS'
 else
  print*,'101'
 endif
end program
