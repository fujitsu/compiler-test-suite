module m2
interface assignment(=)
module procedure s222
end interface
contains
subroutine s222(c,k)
integer,intent(in):: k
character,intent(out)::c
c='b'
if (k==100)c='a'
end subroutine
end

subroutine s2(k)
use m2
integer,intent(out):: k
character::c
k=100
do n=1,3
c=k
end do
if (c/='a')print *,101
end

call s2(k)
if (k/=100)print *,101
print *,'pass'
end
