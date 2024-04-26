type ty
  integer :: kk=0
end type ty

type ty1
  class(ty),allocatable :: alc(:,:,:)
end type ty1

type con
  type(ty1) :: obj
  type(ty1) :: obj1
end type

type(con) :: cont(3)

allocate(cont(2)%obj%alc(10,5,2))

cont(2)%obj%alc(1,2,2)%kk = 20

allocate(cont(2)%obj1%alc ,mold= cont(2)%obj%alc)

if(cont(2)%obj%alc(1,2,2)%kk/=20) print*,101
if(size(cont(2)%obj1%alc,1)/=10 .or. size(cont(2)%obj1%alc&
   ,2)/=5 .or. size(cont(2)%obj1%alc,3)/=2) print*,103
cont(2)%obj1%alc(1,2,2)%kk=10
if(cont(2)%obj1%alc(1,2,2)%kk/=10) print*,102
print*,'pass'
end
