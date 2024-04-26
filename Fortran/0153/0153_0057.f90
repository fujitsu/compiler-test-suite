module m1
private
public::s2,s1
procedure (s1),pointer::s2
contains
subroutine s1(k)
k=k+2
end subroutine
end
module m2
use m1
interface gnr
  procedure s2
end interface
contains
subroutine m2x
k=21
call gnr(k)
if (k/=23) print *,10,k
end subroutine
end
module m3
use m2,only:gnr,m2x
private
public::m3x
contains
subroutine m3x
call m2x
k=11
call gnr(k)
if (k/=13) print *,100,k
end subroutine
end
use m1
use m3
s2=>s1
call m3x
print *,'pass'
end
