module m1
private
public::s2
procedure (s1)::s2
contains
subroutine s1(k)
k=k+1
end subroutine
end
module m11
use m1,only:ss2=>s2
private
public::ss2
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
end subroutine 
end
module m3
use m2,only:ggnr=>gnr,s0
private
public::ggnr,gnr
interface gnr
  procedure s0
end interface
end
use m11
print *,'pass'
end
subroutine s2(k)
k=k+1
end subroutine
