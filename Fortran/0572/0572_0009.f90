integer,pointer,asynchronous::arr(:)
allocate(arr(10))
arr=10

call sub(arr)
print*,"PASS"
contains 
subroutine sub(dmy)
integer,asynchronous::dmy(:)
if(any(dmy /=10))print*,101

end subroutine

end 

