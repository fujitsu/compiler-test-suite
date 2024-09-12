module mod1
type ty
 logical :: ii = .false.
 contains
  procedure :: eprc
   generic :: operator(.and.) => eprc
end type

type,extends(ty) :: ty2
 contains
  procedure :: eprc_ty2
   generic :: operator(.and.) => eprc_ty2
end type
contains

function eprc(a,b)
 type(ty),intent(in) :: b
 class(ty),INTENT(IN) :: a
 logical :: eprc

 eprc = a%ii .and. b%ii
END function

function eprc_ty2(a,b)
 type(ty2),intent(in) :: b
 class(ty2),INTENT(IN) :: a
 logical :: eprc_ty2

 eprc_ty2 = (a%ii .and. b%ii) .or. .true.
END function

function fun1(obj1,obj2,obj12,obj22)
 class(ty) :: obj1,obj2
 class(ty2):: obj12,obj22
 integer  :: fun1
 logical  :: res,res2

 obj1%ii = .true.
 obj2%ii = .false.
 obj12%ii = .true.
 obj22%ii = .false.

 res  =  .false.
 res2 =  .false.

res = obj1 .and. obj2
res2 = obj12 .and. obj22

 if((res .NEQV. .false.) .or. (res2 .NEQV. .true.)) then
  print*,"fail",res,res2
  fun1 = 0
 else
  fun1 = 20
 endif
end function
end module

use mod1
type(ty) :: aobj1,aobj2
type(ty2):: aobj12,aobj22
integer :: xx=0
xx = fun1(aobj1,aobj2,aobj12,aobj22)
if(xx==20) print*,'pass'
end

