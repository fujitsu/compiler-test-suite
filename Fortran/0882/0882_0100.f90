PROGRAM main
character(len=:),pointer:: act_source(:)
integer :: err

allocate(character(LEN=10)::act_source(10), STAT=err)
if(err .EQ. 0)then 
print *, "ALLOCATED"
else
print *, "NOT ALLOCATED"
endif

call sub (act_source)
contains
subroutine sub(dummy)
class(*),target :: dummy(10)
class(*),pointer :: ptr(:)

ptr=>dummy
if(ASSOCIATED(ptr))then
print *,"Pass"
else
print *,"FAIL"
endif 
end subroutine

end 
