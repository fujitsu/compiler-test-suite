integer function f1(arg1)  bind(C,name="ABC")
  integer :: arg1
  f1 = arg1 + 10
end 
integer function   f1(arg1) 
  integer :: arg1
  f1= arg1 + 20
end 

interface
integer function f1(arg1)  bind(C,name="ABC")
  integer :: arg1
end
end interface

type ty
 integer::ii
end type
 type(ty) :: obj_ty
integer::aa=0
aa=100
obj_ty = ty( f1(aa) )
if(obj_ty % ii /= 110)print*,"101" 
call zzz()
call zzz()
 print*,"PASS"
contains
subroutine zzz()
  interface
    integer function   f1(arg1) 
     integer :: arg1
    end
    end interface
  type ty2
    integer::ii
  end type
integer::bb=0
type(ty2) :: obj_ty2
bb=100
obj_ty2 = ty2(f1(bb))
if(obj_ty2%ii /= 120) print*,"102"
end subroutine 
end


