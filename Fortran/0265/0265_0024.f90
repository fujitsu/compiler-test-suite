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
function f1(arg1) result(ret)
  integer :: arg1,ret
end
end interface
type ty
contains
procedure,nopass :: prc=> f1
end type

contains 

subroutine s3(obj_ty)
type(ty)::obj_ty
type ty3
 integer::ii
end type
 type(ty3) :: obj_ty3
integer::aa=0
aa=100
obj_ty3= ty3(obj_ty%prc(aa))
if(obj_ty3 % ii /= 120)print*,"201" 
end subroutine


end

module m2
interface
function f1(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
end
end interface
type ty2
contains
procedure,nopass :: prc=> f1
end type
contains
subroutine s4(obj_ty)
type(ty2)::obj_ty
type ty3
 integer::ii
end type
 type(ty3) :: obj_ty3
integer::aa=0
aa=100
obj_ty3= ty3(obj_ty%prc(aa))
if(obj_ty3 % ii /= 110)print*,"202" 
end subroutine
end

use m1
use m2
type(ty) :: obj_ty
type(ty2) :: obj_ty2
if(obj_ty%prc(100) + obj_ty2%prc(100) .ne. 230) print*,"121"
call s3(obj_ty)
call s4(obj_ty2)
print*,"Pass"
end


