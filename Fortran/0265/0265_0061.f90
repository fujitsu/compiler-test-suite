function f1(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
  ret = arg1 + 10
end function

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

use m2
integer::a,b
common /f1/ a,b
type(ty2) :: obj_ty2
a=10
b=20
if( obj_ty2%prc(100) .ne. 110) print*,"121"
if( a.ne.10 .and. b .ne.20 )print*,"202"
call s4(obj_ty2)
print*,"Pass"
end


