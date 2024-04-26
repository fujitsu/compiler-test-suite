module m2
interface operator(.gen.)
module procedure s222
end interface
contains
function   s222(c,k)
integer,intent(in),pointer:: k
character,intent(in)::c
integer::s222
s222=0
if (c=='a'.and. k==100) s222=1
end function  
end

subroutine s2()
use m2
integer,pointer    :: k
character::c='a'
allocate(k)
k=100
do n=1,3
call s(c.gen.k)
end do
if (c/='a')print *,101
end

call s2()
print *,'pass'
end
subroutine s(k)
if (k/=1) print *,101
end 
