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
  integer :: fun1
  integer::dmy1
  select type(passdmy)
  type is(t2)
   fun1 = dmy1+passdmy%i1
  class is(t1)
   fun1 = 0
  end select
 end function
end module

program main
 use mod1
 type(t2),target :: tgt
 tgt%i1=10
 tgt%ch2='fortran'
 obj => tgt

 selecttype(obj)
 type is(t2)
  val=obj%prc1(5)
  if(val == 15) then
   print*,'PASS'
  else
   print*,'101'
  endif
 class default
  print*,101
 endselect
end program
