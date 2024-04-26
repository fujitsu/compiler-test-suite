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
subroutine f1(arg1)  bind(C,name="ABC")
  integer :: arg1
end
end interface
type ty
 procedure(f1),pointer,nopass::prc1=>f1
end type
end

module m2
interface
subroutine  f1(arg1) 
  integer :: arg1
end
end interface
type ty2
 procedure(f1),pointer,nopass::prc1=>f1
end type
end
!
use m1
use m2
type(ty) :: obj_ty
type(ty2) :: obj_ty2
integer::aa,bb
aa=100
bb=100
call obj_ty%prc1(aa)
if(aa /=110)print*,"101"
call obj_ty2%prc1(bb)
if(bb /=120)print*,"102", bb
print*,"Pass"
end


