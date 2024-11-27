type ty
class(*),allocatable :: calc
end type
type(ty) :: obj
class(*),pointer :: obj1
class(*),pointer :: obj2
integer :: ii = 2
allocate(obj1,SOURCE=ii)
obj = ty(obj1)    

allocate(obj2,source=obj%calc)
select type(obj2)
type is(INTEGER)
if(obj2 /=2)then
print *,"fail"
else
print *,"PASS"
endif
end select
end
