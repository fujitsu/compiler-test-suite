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
subroutine  f1(arg1)  bind(C,name="ABC")
  integer :: arg1
end
end interface
type ty
 procedure(f1),pointer,nopass::prc1
end type
end

module m2
interface
subroutine  f1(arg1) 
  integer :: arg1,ret
end
end interface
type ty2
 procedure(f1),pointer,nopass::prc1
end type
end

use m1
type(ty) :: obj_ty
integer::aa=0
type ty4
 procedure(f1),pointer,nopass::prc1
end type
type(ty4)::obj_ty4
aa=100
obj_ty = ty(f1)
obj_ty4 = ty4(obj_ty%prc1)

call obj_ty%prc1(aa)
if(aa /= 110) print*,"101"
call zzz()
call obj_ty%prc1(aa)
if(aa /= 120) print*,"103"
call obj_ty4%prc1(aa)
if(aa /= 130) print*,"104"

print*,"PASS"
contains

subroutine zzz()
use m2
integer::bb=0
type(ty2) :: obj_ty2
type ty5
 procedure(f1),pointer,nopass::prc1
end type
type(ty5)::obj_ty5
obj_ty2 = ty2(f1)
bb=100
obj_ty5 = ty5(obj_ty2%prc1)
call obj_ty2%prc1(bb)
if(bb /= 120) print*,"105"
call obj_ty5%prc1(bb)
if(bb /= 140) print*,"106"
end subroutine 
end


