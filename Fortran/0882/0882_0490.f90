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
 interface operator(+)
 function pls(a,b)
  import t1
  class(t1),intent(in) :: a,b
  type(t1),pointer :: pls
 end function
 end interface operator(+)

 type(t1) :: obj2
 type(t1),pointer :: val

 obj2%i1 = 10

 val => obj%prc1(5) + obj2
 if(val%i1 == 15) then
  print*,'PASS'
 else
  print*,'101'
 endif
end program

function pls(a,b)
 use mod1
 class(t1),intent(in) :: a,b
 type(t1),pointer :: pls
 type (t1),save,target :: res
 res%i1=a%i1+b%i1
 pls=>res
end function
