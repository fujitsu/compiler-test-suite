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
  integer :: fun1
  real::dmy1
  fun1 = int(dmy1)
 end function

 function fun2(passdmy,dmy1)
  class(t2) :: passdmy
  integer :: fun2
  integer::dmy1
   fun2 = dmy1+passdmy%i1
 end function
end module

program main
 use mod1
 type(t2) :: tgt
 tgt%i1=10
 tgt%ch2='fortran'
 allocate(obj,source = tgt)

 val=obj%gnr(5)
 if(val == 15) then
  print*,'PASS'
 else
  print*,'101'
 endif
end program
