integer,pointer,volatile::arr(:)
allocate(arr(10))
arr=10

call sub(arr)
print*,"PASS"
contains 
subroutine sub(dmy)
integer,volatile::dmy(..)
if(is_contiguous(dmy).neqv. .true.)print*,101

end subroutine

end 

