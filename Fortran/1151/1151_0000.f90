type ty
 class(*),allocatable :: obj1(:)
end type

type(ty) :: obj
integer:: arr(5)
allocate(integer :: obj%obj1(2))

obj%obj1= size(arr)

select type(t=>obj%obj1)
type is(integer(kind=4))
if(any(t .ne. 5))print*,"101"
if(size(obj%obj1) .ne. 2)print*,"102"
type is(integer(kind=2))
if(any(t .ne. 5))print*,"101"
if(size(obj%obj1) .ne. 2)print*,"102"
class default
print*,"913"
end select
print*,"PASS"
end
