program test
class(*),pointer :: cptr1(:)
call sub(NULL(cptr1))      
contains
subroutine sub(d_cptr)
class(*),pointer ::d_cptr(:)
integer ::err
allocate(integer::d_cptr(10), STAT=err)
if (err.EQ. 0) then
print*, "SUCCESS -1"
else 
print*, "FAILURE -1"
endif 
end subroutine
end
