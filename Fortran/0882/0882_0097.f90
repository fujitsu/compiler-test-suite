program test
integer ,pointer :: ptr
call sub(NULL(ptr))

contains
subroutine sub(dum) 
integer, pointer:: dum
integer ::err
allocate(dum, STAT=err)
if(err .EQ. 0)then
dum=30
print *, "SUCCESS"
else 
print *, "FAILURE"
endif
print *, dum
end subroutine sub
end
