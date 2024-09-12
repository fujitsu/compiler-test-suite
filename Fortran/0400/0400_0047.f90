module m1
contains
subroutine s1(k)
 interface gnr
   module procedure  ::xx
 end interface
 call gnr(k)
 end subroutine
 subroutine xx(k)
 k=k+2
 end subroutine
end
use m1
k=1
call s1(k)
if (k/=3) print *,101,k
print *,'pass'
end
