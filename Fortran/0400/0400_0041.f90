module m1
private
public::s2
procedure (s1),pointer::s2
contains
subroutine s1(k)
k=k+1
end subroutine
end
module m11
use m1,only:ss2=>s2
private
public::ss2,tset
interface tset
  procedure set
end interface
contains
subroutine set
interface
subroutine x2(k)
end subroutine
end interface
procedure(x2)::s2
ss2=>s2
end subroutine
end
module m2
use m11
private
public::gnr,s0
interface gnr
  procedure ss2
end interface
contains
subroutine s0
k=1
call gnr(k)
if (k/=3) print *,102,k
end subroutine 
end
module m3
use m2,only:ggnr=>gnr,ss0=>s0 
private
public::ggnr,gnr
interface gnr
  procedure ss0
end interface
end
subroutine s
use m3
call gnr
k=1
call ggnr(k)
if (k/=3) print *,101,k
end
call sset
call s
print *,'pass'
end
subroutine sset
use m11,only:tset
call tset
end subroutine 

subroutine s2(k)
k=k+2
end 
