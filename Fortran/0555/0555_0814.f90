program main
type ty
integer :: ii
end type
type(ty) :: obj(5,5)
call sub(obj)
contains
subroutine sub(dmy)
class(ty) :: dmy(5,5)
dmy(1,2)%ii = 10
select type(dmy)
type is(ty)
if(sizeof(dmy(1,2))/=4)then
print *,101
else
print *,"pass"
endif
if(dmy(1,2)%ii /= 10)then
print *,201
else 
print *,"pass"
endif
end select
end subroutine
end program 

