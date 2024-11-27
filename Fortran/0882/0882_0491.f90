module mod1
 type t1
  integer::i1=0
  contains
  procedure,PASS :: prc1 => fun1
 end type

 type,extends(t1) :: t2
  character(len=8)::ch2='xxxxxxxx'
 end type

 class(t1),pointer :: obj

 contains
 function fun1(passdmy,dmy1)
  class(t1) :: passdmy
  class(t1),allocatable :: fun1
  integer::dmy1
  select type(passdmy)
  type is(t2)
   allocate(fun1,source=passdmy)
   fun1%i1 = dmy1
  class is(t1)
   allocate(fun1,source=passdmy)
  end select
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

 type(t2),target :: tgt

 type(t1) :: obj2
 type(t1),pointer :: val

 tgt%i1=10
 tgt%ch2='fortran'
 obj => tgt

 obj2%i1 = 10

 selecttype(obj)
 type is(t2)
 val => obj%prc1(5) + obj2
  if(val%i1 == 15) then
   print*,'PASS'
  else
   print*,'101'
  endif
 class default
  print*,101
 endselect
end program

function pls(a,b)
 use mod1
 class(t1),intent(in) :: a,b
 class(t1),pointer :: pls
 type (t1),pointer :: res
 allocate(res)
 res%i1=a%i1+b%i1
 pls=>res
end function
