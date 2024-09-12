program T

type ty1
integer :: i=0
end type

type, Extends(ty1) ::ty2
real :: r=0
end type

class(*),   allocatable :: obj

type(ty2) :: src
src%i=10

allocate(obj, source=src)  
deallocate (obj)

print*,'pass'
end 
