module m1
 contains
 subroutine s1(k,l)
 character(len=l),value:: k(2)
print *,k
 end subroutine
end
use m1
character(len=2) ::kk(2)
kk="22"
call s1( kk(1),2 )
call s1( (kk(1)),2 )
print *,'pass'
end

