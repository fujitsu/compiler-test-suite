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
allocate(obj1%alc ,mold= obj%alc)

if(obj%alc(1)%kk/=20) print*,101
if(size(obj1%alc)/=10) print*,103
obj1%alc(1)%kk=10
print*,'pass'
end
