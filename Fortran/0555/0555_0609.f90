module mod1
 type t1
  integer::i1
  contains
  procedure,NOPASS :: prc1 => fun1
 end type

 type(t1) :: obj

 contains
 function fun1(dmy1)
  type(t1)::fun1
  integer::dmy1
  fun1%i1=dmy1
 end function
end module

program main
 use mod1
 if(f1(obj%prc1(5)) == 5) then
  print*,'PASS'
 else
  print*,'101'
 endif
contains
function f1(dum)
integer :: f1
type(t1) :: dum
f1=dum%i1
end function
end program
