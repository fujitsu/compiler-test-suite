subroutine f1(arg1)  bind(C,name="ABC")
  integer :: arg1
 arg1 = arg1 + 10
end subroutine
subroutine f1(arg1) 
  integer :: arg1
  arg1 = arg1 + 20
end subroutine

module m1
interface
subroutine f1(arg1) 
  integer :: arg1
end
end interface
type ty
contains
procedure,nopass :: prc=> f1
end type
end

module m2
interface
subroutine  f1(arg1)  bind(C,name="ABC")
  integer :: arg1
end
end interface
type ty2
contains
procedure,nopass :: prc=> f1
end type
end

use m1
use m2
integer::act1=10,act2=10
type(ty) :: obj_ty
type(ty2) :: obj_ty2

call obj_ty%prc(act1)
if(act1 /= 30)print*,"101",act1


call obj_ty2%prc(act2)
if(act2 /= 20)print*,"102",act2
print*,"Pass"
end


