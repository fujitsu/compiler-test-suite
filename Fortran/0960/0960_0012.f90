type ty
class(*),allocatable :: calc(:)
end type

type(ty) :: obj
class(*),pointer :: obj1(:)

class(*),allocatable :: obj2(:)
integer :: ii(10) = 2
allocate(obj1,source=ii)

obj = ty(obj1)      

allocate(obj2,source=obj%calc)
select type(obj2)
Type Is(real)
print *,"121"
type is(INTEGER)
if(obj2(1) /=2) then
print *,"122",obj2(1)
else if (sizeof(obj2)/=40)then
print *,"123"
else 
print *,"PASS"
ENDIF
end select
end
