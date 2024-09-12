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
use m1
private
public::gnr,s0
interface gnr
  procedure s2
end interface
contains
subroutine s0
k=1
call gnr(k)
if (k/=3) print *,102,k
end subroutine 
end
subroutine s2(k)
k=k+2
end 
subroutine s
use m2
call s0
k=1
call gnr(k)
if (k/=3) print *,101,k
end
call s
print *,'pass'
end
