module m1
procedure (zzz),pointer :: p
contains
subroutine s1
interface pp
  procedure p
end interface
call pp(11,12)
end subroutine
subroutine zzz(k1,k2)
if (k1/=11) print *,112
if (k2/=12) print *,122
end subroutine
end
use m1
p=>zzz
call s1
print *,'pass'
end
