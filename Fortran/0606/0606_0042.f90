module mod1
type ty
 complex :: ii = (0.0,0.0)
 contains
  procedure :: eprc
   generic :: operator(.so.) => eprc
end type

type,extends(ty) :: ty2
 contains
  procedure :: eprc_ty2
   generic :: operator(.so.) => eprc_ty2
end type
contains

function eprc(a,b)
 type(ty),intent(in) :: b
 class(ty),INTENT(IN) :: a
 complex :: eprc

 eprc = a%ii + b%ii
END function

function eprc_ty2(a,b)
 type(ty2),intent(in) :: b
 class(ty2),INTENT(IN) :: a
 complex :: eprc_ty2

 eprc_ty2 = (a%ii + b%ii) + (0.2,0.3)
END function

function fun1()
 integer  :: fun1
 complex  :: res,res2

 res  =  (0,0)
 res2 =  (0,0)

res = ty((2.1,3.2)) .so. ty((0.4,0.6))
res2 = ty2((2.3,2.3)) .so. ty2((22,43))

 if((int(res) .NE.2 ) .or. (int(res2) .NE. 24)) then
  print*,"fail",res,res2
  fun1 = 0
 else
  fun1 = 20
 endif
end function
end module

use mod1
integer :: xx=0
xx = fun1()
if(xx==20) print*,'pass'
end

