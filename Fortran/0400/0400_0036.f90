module m1
procedure (s1)::s2
contains
subroutine s1(k)
k=k+1
end subroutine
end
module m2
use m1
interface gnr
  procedure s2
end interface
end
subroutine s2(k)
k=k+2
end 
subroutine s
use m2
k=1
call gnr(k)
if (k/=3) print *,101,k
end
call s
print *,'pass'
end
