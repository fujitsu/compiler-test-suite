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
 procedure(f1),pointer,nopass::prc1=>f1
end type
end

module m2
interface
function f1(arg1) result(ret) 
  integer :: arg1,ret
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
if(obj_ty%prc1(100) + obj_ty2%prc1(100) .ne. 230) print*,"121"
print*,"Pass"
end


