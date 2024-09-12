program T

type ty1
integer :: i=0
end type

type, Extends(ty1) ::ty2
real :: r=0
end type

class(ty2), pointer     :: src
class(*),   allocatable :: obj

type(ty2) :: objt
objt%i=10

allocate(src, source=objt)  
allocate(obj, source=src)  

deallocate (src)
deallocate (obj)
print*,'pass'

end 
