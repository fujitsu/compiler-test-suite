module mmm
contains
subroutine sub(ch)
character(2, 1) :: ch
associate(p=>ch)

if(p(1:)/="12") print *,"err"
if(p(len(p)-1:2)/="12") print *,"err"
if(ch(len(ch)-1:2)/="12") print *,"err"
end associate
end subroutine sub
end module mmm
use mmm
call sub("12")
print *,'pass'
end
