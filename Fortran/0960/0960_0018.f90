Program main
type ty
class(*),allocatable :: calc(:)
end type
type(ty) :: obj
class(*),pointer :: obj1(:)
integer,allocatable :: ii (:)

allocate(ii(20))
obj = ty(ii) 

allocate(obj1,source=obj%calc)
select type(obj1)
type is(INTEGER)
if(sizeof(obj1) .eq. 80) then 
print*,"Pass"
else
print*,"121"
endif
end select
END Program main
