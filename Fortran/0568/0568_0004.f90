module m1
character(len = 100) :: arr(2)
end module m1

module m2
integer :: ESTAT,CSTAT
logical :: wt

end module m2

use m1
use m2
arr(1) = "echo 'EXECUTE COMMAND LINE'"
wt = .TRUE.
call sub(arr(1),wt)
call execute_command_line(arr(1),wt,ESTAT,CSTAT,arr(2))
if (CSTAT<0) print *,"101"
if (CSTAT>0) print *,"102"
print *, "PASS"
contains 
subroutine sub(dmy1,dmy2)
character(len = 100) :: dmy1
logical :: dmy2
dmy1 = "echo 'EXECUTE COMMAND LINE'"
dmy2 = .true.
end subroutine sub
end


