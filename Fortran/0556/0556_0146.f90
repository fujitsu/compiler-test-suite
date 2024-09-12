program T
type ty1
integer :: i
end type

type, Extends(ty1) ::ty2
real :: r
end type

class(*),  allocatable :: obj
allocate(ty2 :: obj)
deallocate(obj)
print*,'pass'
end 
