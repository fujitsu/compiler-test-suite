function f1(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
   entry ent(arg1) result(ret) bind(c,NAME='ss2')
  ret = arg1 + 10
end function
function f1(arg1) result(ret)
  integer :: arg1,ret
   entry ent(arg1) result(ret) 
  ret = arg1 + 20
end function

module m1
interface
function ent(arg1) result(ret) 
  integer :: arg1,ret
end
end interface
type ty
contains
procedure,nopass :: prc=> ent
end type
end

module m2
interface
function ent(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
end
end interface
type ty2
contains
procedure,nopass :: prc=> ent
end type
end

use m1
use m2
type(ty) :: obj_ty
type(ty2) :: obj_ty2
if(obj_ty%prc(100) + obj_ty2%prc(100) .ne. 230) print*,"121"
print*,"Pass"
end


