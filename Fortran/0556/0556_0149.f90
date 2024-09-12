program T
class(*),   allocatable :: obj
integer :: src
src=10
allocate(obj, source=src)  
deallocate (obj)
print*,'pass'
end 
