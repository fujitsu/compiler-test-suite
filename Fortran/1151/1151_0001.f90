type ty
 class(*),allocatable :: obj1
end type

type(ty) :: obj
integer:: arr(5)
allocate(integer :: obj%obj1)

obj%obj1=size(arr)
select type(t=>obj%obj1)
type is(integer)
if(t .ne. 5)print*,"101"
class default
print*,"913"
end select
print*,"PASS"
end
