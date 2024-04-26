module m2
interface gen
module procedure s222
end interface
contains
subroutine s222(c,k)
integer,intent(in),pointer:: k
character,intent(out)::c
c='b'
if (k==100)c='a'
end subroutine
end

subroutine s2()
use m2
integer,pointer    :: k
character::c
allocate(k)
k=100
do n=1,3
call gen(c,k)
end do
if (c/='a')print *,101
end

call s2()
print *,'pass'
end
