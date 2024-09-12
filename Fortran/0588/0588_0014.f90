type ty
  integer :: ii
end type

type ,extends(ty) :: ty1
  integer :: jj=10
end type

type(ty), target,save :: tar

type ty2
 class(ty),pointer :: obj
end type

type(ty2) :: objty2 = ty2(obj= tar)
if(associated(objty2%obj) .eqv. .false.)print*,"101"
select type(tmp=>objty2%obj)
type is (ty)
 objty2%obj%ii = 30    
type is(ty1) 
  print*,"102"
class default      
print*,"103"
end select
if(objty2%obj%ii .ne. 30) print*,"104"
print*,"pass"
end

