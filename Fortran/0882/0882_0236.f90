type ty
  integer :: kk
end type ty

type ty1
  class(ty),allocatable :: alc(:)
end type ty1

type(ty1) :: obj
type(ty1) :: obj1

allocate(obj%alc(10))
obj%alc(1)%kk = 20
obj1 = obj
print*,obj%alc(1)%kk
print*,obj1%alc(1)%kk
end
