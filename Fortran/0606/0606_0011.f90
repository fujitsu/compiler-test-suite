module mod1
type ty
 integer :: ii = 2
 contains
  procedure,pass(a) :: eprc1
  procedure,pass(a) :: eprc2
  procedure,pass(a) :: eprc3
  procedure,pass(a) :: eprc4
   generic :: operator(*) => eprc1
   generic :: operator(+) => eprc2
   generic :: operator(-) => eprc3
   generic :: operator(/) => eprc4
end type

contains

function eprc1(b,a)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 integer :: eprc1
 eprc1 = a%ii * b
end function

function eprc2(b,a)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 integer :: eprc2
 eprc2 = a%ii + b
end function

function eprc3(b,a)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 integer :: eprc3
 eprc3 = a%ii - b
end function

function eprc4(b,a)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 integer :: eprc4
 eprc4 = a%ii / b
end function

function fun1()
 type(ty) :: obj1,obj2,obj3,obj4
 integer::res

 obj1%ii = 10
 obj2%ii = 2
 obj3%ii = 3
 obj4%ii = 4
 res =  0

res = (((2 + obj1) * obj2) / obj3) - obj4

 if(res .NE. 4) then
  print*,"fail"
 fun1 = 0
 else
 fun1 = 20
 endif
end function
end module

PROGRAM MAIN
use mod1
xx = fun1()
if(xx==20) print*,'pass'
end program

