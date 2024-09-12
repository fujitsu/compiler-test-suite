program main

character(len=4) :: tar_ch
class(*),allocatable,target:: obj_alloc
class(*),pointer:: ptr
tar_ch= "AVCD"
allocate(obj_alloc ,SOURCE=tar_ch)
ptr=>obj_alloc

if (sizeof(ptr) /= 4)then
print *,1001
else 
print *,"pass"
end if

end program
