module mod1
 type t1
  integer::i1
  contains
  procedure,NOPASS :: prc1 => fun1
 end type

 type(t1) :: obj

 contains
 function fun1(dmy1)
  integer::fun1,dmy1
  fun1=dmy1
 end function
end module

program main
 use mod1
 if((obj%prc1(5)+5) == 10) then
  print*,'PASS'
 else
  print*,'101'
 endif
end program
