module mod1
type node
 type(node),allocatable::next(:,:)
 integer::aa = 1
end type
end module

USE mod1
type(node)::obj(2,3)

allocate(obj(2,2)%next(3,3))

call sub(obj)

print*,"PASS"

contains 
subroutine sub(arg)
type(node), contiguous::arg(:,:)

if(.NOT.IS_CONTIGUOUS(arg(2,2)%next(1,2)%next)) print*, 911
end subroutine
end
