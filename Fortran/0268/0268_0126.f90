type ty
  integer :: ii
end type

type ,extends(ty) :: ty1
   integer :: jj=10
end type

type(ty1), target,save :: tar
class(ty),pointer :: obj/tar/

if(associated(obj) .eqv. .false.)print*,"101"
select type(obj)
type is (ty)
  print*,"102"
type is(ty1)
  obj%ii=30
class default
  print*,"103"
end select

if(obj%ii .ne. 30)print*,"104"
print*,"PASS"
end
