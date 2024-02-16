module m1
contains
subroutine s01(c)
complex,pointer,intent(in) :: c(:)
c(1)=1
c(2)%re=1
end subroutine
end
use m1
complex,target :: ct(4)
call s01(ct)
if (ct(1)%re/=1) print *,101
if (ct(2)%re/=1) print *,102
print *,'pass'
end

