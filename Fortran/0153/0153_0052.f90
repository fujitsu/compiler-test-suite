module m1
private
public::s2,s1
procedure (s1),pointer::s2
contains
subroutine s1(k)
k=k+2
end subroutine
end
module m11
use m1,only:ss2=>s2
end
module m2
use m11
private
public::gnr
interface gnr
  procedure ss2
end interface
end
module m3
use m2,only:ggnr=>gnr
private
public::ggnr,m3x
contains
subroutine m3x
k=11
call ggnr(k)
if (k/=13) print *,100,k
end subroutine
end
subroutine s
use m3
call m3x
k=1
call ggnr(k)
if (k/=3) print *,101,k
end
use m1
s2=>s1
call s
print *,'pass'
end
subroutine s2(k)
k=k+20
end 
