module m1
contains
subroutine sub(kk)
if (kk/=1)print *,'error-1'
end subroutine
end

subroutine s2(k)
use m1
integer,intent(out):: k

k=1
do n=1,1
call sub(k)
if (k/=1)print *,'error-2'
end do
end
interface
subroutine s2(k)
integer,intent(out):: k
end subroutine
end interface
call s2(kk)
if (kk/=1)print *,'error-3'
print *,'pass'
end
