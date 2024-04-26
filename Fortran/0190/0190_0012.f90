module m2
interface assignment(=)
module procedure s222
end interface
contains
subroutine s222(k,cha)
integer,intent(out):: k
character,intent(in)::cha
k=0
if (cha=='a')k=1
end subroutine
end

subroutine s2(k)
use m2
integer,intent(out):: k
k=0
do n=1,3
k='a'
end do
end

call s2(k)
if (k/=1)print *,101
print *,'pass'
end
