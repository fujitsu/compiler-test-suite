Module m
type ty0
contains
FINAL::des_ty0
end type

type,extends(ty0) :: ty1
class(ty0),allocatable::obj
contains
FINAL::des_ty1
end type

type,extends(ty1) :: ty2
integer :: kk
contains
FINAL::des_ty2
end type

contains
subroutine des_ty1(dmy)
TYPE(ty1):: dmy
print*,'ty1 destructor call '
end subroutine

subroutine des_ty0(dmy)
TYPE(ty0):: dmy
print*,'ty0 destructor call '
end subroutine
subroutine des_ty2(dmy)
TYPE(ty2):: dmy
print*,'ty2 destructor call '
end subroutine
end module

use m
class(ty1),allocatable:: ty1_obj1
type(ty2):: ty2_obj1
allocate(ty2::ty2_obj1%obj)
ty1_obj1=ty2_obj1
ty1_obj1%obj=ty1_obj1
select type(ty1_obj1)
type is (ty2)
 select type(a=>ty1_obj1%obj)
 type is (ty2)
 class default
 print*,"101"
 end select
class default
print*,"102"
end select
print*,"Pass"
end
