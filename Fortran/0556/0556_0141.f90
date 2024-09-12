program test
integer :: act 
act=10
call sub (act)
contains 
subroutine sub(dum)
class(*) :: dum
print*,sizeof(dum),'pass'
end subroutine
end
