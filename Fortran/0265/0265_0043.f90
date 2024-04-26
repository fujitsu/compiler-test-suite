function f1(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
  ret = arg1 + 10
end function
function f1(arg1) result(ret)
  integer :: arg1,ret
  ret = arg1 + 20
end function

module m1
interface
function f1(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
end
end interface
type ty
 procedure(f1),pointer,nopass::prc1
end type
end

module m2
interface
function f1(arg1) result(ret) 
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
obj_ty%prc1=>f1

if(obj_ty%prc1(aa) /= 10) print*,"101"
call zzz()
if(obj_ty%prc1(aa) /= 10) print*,"103"

print*,"PASS"
contains
subroutine zzz()
use m2
integer::bb=0
type(ty2) :: obj_ty2
obj_ty2%prc1=>f1

if(obj_ty2%prc1(bb) /= 20) print*,"102"
if(obj_ty2%prc1(bb+10) /= 30) print*,"103"
end subroutine 
end


