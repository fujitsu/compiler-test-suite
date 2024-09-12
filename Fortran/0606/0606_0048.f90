module mod1
type ty
 integer :: ii = 2
 contains
  procedure :: eprc
  generic :: operator(.mult.) => eprc
end type

type,extends(ty)::ty2
 integer :: jj = 2
 contains
  procedure :: eprc=>eprc_ty2
  procedure :: eprc_new
  generic :: operator(.mult.) => eprc_new
end type

contains

function eprc(a,b)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 type(ty) :: eprc

 eprc%ii = a%ii * b
END function

function eprc_ty2(a,b)
 integer,intent(in) :: b
 class(ty2),INTENT(IN) :: a
 type(ty) :: eprc_ty2

 eprc_ty2%ii = a%ii * b+2
END function

function eprc_new(a,b)
 type(ty),intent(in) :: b
 class(ty2),INTENT(IN) :: a
 type(ty) :: eprc_new

 eprc_new%ii = a%ii * b%ii
END function

function fun1()
 class(ty),pointer :: ptr
 type(ty),target :: obj1,res
 type(ty2),target :: obj2,obj3

 ptr=>obj1

 obj1%ii = 10
 obj2%ii = 20
 obj3%ii = 30
 res%ii =  0

res = obj3 .mult.(ptr .mult. obj2%ii)

 if(res%ii .NE. 6000) then
  print*,"fail"
 fun1 = 0
 else
 fun1 = 10
 endif

 ptr=>obj2

res = obj3 .mult. (ptr .mult. obj2%ii)
 if(res%ii .NE. 12060) then
  print*,"fail"
 fun1 = 0
 else
 fun1 = fun1+10
 endif

end function
end module

use mod1

if(fun1()==20) print*,'pass'
end

