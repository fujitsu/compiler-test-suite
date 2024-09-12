module mod1
 type t1
  integer::i1
  contains
  procedure,PASS :: prc1 => fun1
  procedure,NOPASS :: prc2 => fun2
  procedure,PASS :: prc3 => fun3
 end type

 type,extends(t1) :: t2
  real::r2
 end type

 class(t1),allocatable :: obj

 contains
 function fun1(passdmy,dmy1)
  class(t1) :: passdmy
  class(t1),allocatable::fun1
  integer::dmy1
  allocate(t2::fun1)
  fun1%i1=dmy1
  select type(fun1)
  type is(t2)
  select type(passdmy)
  type is(t2)
   fun1%r2=23.3
  end select
  end select
 end function

 function fun2(dmy1)
  class(t1),pointer::fun2
  integer::dmy1
  class(t2),allocatable,target :: local
  allocate(local)
  local%r2=25.5
  fun2=>local
  fun2%i1=dmy1
 end function

 function fun3(passdmy,dmy1)
  class(t1) :: passdmy
  class(*),pointer::fun3
  integer::dmy1
  class(t2),allocatable,target :: local
  allocate(local)
  local%i1=dmy1
  local%r2=32.2
  selecttype(passdmy)
  type is(t2)
   fun3=>local
  endselect
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

 allocate(t2::obj)
 stc=tstc(obj%prc1(5),obj%prc2(5),obj%prc3(5))
 if(stc%f1%i1 == 5 .and. stc%f2%i1 == 5) then
  print*,'PASS'
 else
  print*,'101'
 endif
end program
