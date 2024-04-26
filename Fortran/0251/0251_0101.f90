implicit none
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj_parent
allocate(ty2::obj_parent)

block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj1
allocate(ty2::obj1)

block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj2
allocate(ty2::obj2)

if(extends_type_of(obj2,obj_parent).neqv. .false.) then
 print*,102
else
 if(extends_type_of(obj1,obj_parent).eqv. .false.) then
  print*,'pass'
 else
  print*,101
 endif
end if
end block
end block
end

