function f1(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
  ret = arg1 + 10
end function
function f1(arg1) result(ret)
  integer :: arg1,ret
  ret = arg1 + 20
end function

interface
function f1(arg1) result(ret) bind(C,name="ABC")
  integer :: arg1,ret
end
end interface

type ty
 procedure(f1),pointer,nopass::prc1
end type
 type(ty) :: obj_ty
 integer::aa=5
 obj_ty = ty(f1)
 if(obj_ty%prc1(aa) /=15) print*,"101"
 call zzz()
 print*,"PASS"
contains
subroutine zzz()
  interface
    function f1(arg1) result(ret) 
     integer :: arg1,ret
    end
    end interface
  type ty2
    procedure(f1),pointer,nopass::prc1
  end type
integer::bb=5
type(ty2) :: obj_ty2
obj_ty2 = ty2(f1)
if(obj_ty2%prc1(bb) /=25) print*,"102"
end subroutine 
end


