module m1
private
public::s2
procedure (s1)::s2
contains
subroutine s1(k)
k=k+1
end subroutine
end
module m2
use m1,only:s3=>s2
interface gnr
  procedure s3
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
