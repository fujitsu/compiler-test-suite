module mod1
type ty
 integer :: ii = 2
 contains
  procedure :: eprc
   generic :: operator(.mult.) => eprc
end type

contains

function eprc(a,b)
 type(ty),intent(in) :: b
 class(ty),INTENT(IN) :: a
 type(ty) :: eprc

 eprc%ii = a%ii * b%ii
END function

function fun1()
 type(ty) :: obj1,obj2,obj3,res

 obj1%ii = 10
 obj2%ii = 20
 obj3%ii = 30
 res%ii =  0

res = obj1 .mult. obj2 .mult. obj3

 if(res%ii .NE. 6000) then
  print*,"fail"
 fun1 = 0
 else
 fun1 = 20
 endif
end function
end module

use mod1
xx = fun1()
if(xx==20) print*,'pass'
end

