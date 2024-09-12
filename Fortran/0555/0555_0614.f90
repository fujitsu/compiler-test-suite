module mod1
 type t1
  integer::i1=0
  contains
  procedure,PASS :: prc1 => fun1
  generic::gnr=>prc1
 end type

 type,extends(t1) :: t2
  character(len=8)::ch2='xxxxxxxx'
  contains
  procedure,PASS :: prc2 => fun2
  generic::gnr=>prc2
 end type

 type(t2),allocatable :: obj

 contains
 function fun1(passdmy,dmy1)
  class(t1) :: passdmy
  class(t1),allocatable :: fun1
  real::dmy1
  allocate(fun1,source=passdmy)
  passdmy%i1 = int(dmy1)
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
 interface operator(+)
 function pls(a,b)
  import t1
  class(t1),intent(in) :: a,b
  class(t1),pointer :: pls
 end function
 end interface operator(+)

 type(t2) :: tgt
 type(t1) :: obj2
 type(t1),pointer :: val
 tgt%i1=10
 tgt%ch2='fortran'
 allocate(obj,source = tgt)

 obj2%i1 = 10
 val=>obj%gnr(5)+obj2

 if(val%i1 == 15) then
  print*,'PASS'
 else
  print*,'101'
 endif
end program

function pls(a,b)
 use mod1
 class(t1),intent(in) :: a,b
 class(t1),pointer :: pls
 type (t1),target,save :: res
 res%i1=a%i1+b%i1
 pls=>res
end function
