module mod1

type base
  real(kind=8)::oo
  real(kind=8)::oo11
  contains
  final::final_base
end type

type,extends(base):: ty1
   integer(kind=8)::jj
   integer(kind=8)::jj11
contains
   FINAL :: final_ty1
end type

type ty
   integer(kind=8)::ii
   integer(kind=8)::ii11
contains
   FINAL :: final_ty
end type

type,extends(ty)::ty2
   integer(kind=8)::kk
   integer(kind=8)::kk11
   type(ty1)::com
contains
   FINAL :: final_ty2
end type

CONTAINS
subroutine final_ty(x)
   type(ty) :: x
   PRINT*,'destructor ty'
   PRINT*,x%ii
end subroutine
subroutine final_ty1(x)
   type(ty1) :: x
   PRINT*,'destructor ty1'
   PRINT*,x%jj
end subroutine
subroutine final_ty2(x)
   type(ty2) :: x
   PRINT*,'destructor ty2'
   PRINT*,x%kk
end subroutine
subroutine final_base(x)
   type(base) :: x
   PRINT*,'destructor base'
   PRINT*,x%oo
end subroutine
END MODULE




PROGRAM MAIN
USE mod1
TYPE(ty2)::obj1
TYPE(ty1)::obj2
INTEGER::yy=20
obj1%ii=2
obj1%kk=3
obj1%com%jj=4
obj1%com%oo=5.000
obj2%jj=40
obj2%jj11=70
obj2%oo=50
obj2%oo11=500
obj1=ty2(yy,yy,30,yy,obj2)
IF(obj1%kk /= 30) PRINT*,'fail'
print*, "destructor ty"
print*, 20
print*, "destructor ty2"
print*, 30
print*, "destructor ty1"
print*, 40
print*, "destructor base"
print*, "50.00000000000000"
print*, "destructor ty"
print*, 20
END
