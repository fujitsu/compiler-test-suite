module mod1
 type t1
  integer::i1=0
  contains
  procedure,PASS :: prc => fun1
 end type

 type,extends(t1) :: t2
  character(len=8)::ch2='xxxxxxxx'
  contains
  procedure,PASS :: prc => fun2
 end type

 class(t1),pointer :: obj

 contains
 function fun1(passdmy,dmy1)
  class(t1) :: passdmy
  class(t1),allocatable :: fun1
  integer::dmy1
  allocate(fun1,source=passdmy)
  passdmy%i1 = dmy1
 end function

 function fun2(passdmy,dmy1)
  class(t2) :: passdmy
  class(t1),allocatable :: fun2
  integer::dmy1
   allocate(fun2,source=passdmy)
   fun2%i1 = dmy1
 end function
end module

program main
 use mod1

 type stc
  class(t1),allocatable::ost
 end type

 type(t2),target :: tgt
 class(t1),allocatable::temp
 type(stc) :: stobj
 tgt%i1=10
 tgt%ch2='fortran'
 obj => tgt

allocate(stobj%ost)
stobj=stc(obj%prc(5))

allocate(temp,source=stobj%ost)
selecttype(temp)
typeis(t2)
 print*,'PASS'
end select
end program
