module m1
procedure (zzz),pointer :: p
interface p
  procedure xxx,p
end interface
contains
subroutine xxx(k1)
if (k1/=1) print *,101
write(21,*) k1
p=>zzz
end subroutine
subroutine zzz(k1,k2)
if (k1/=11) print *,112
if (k2/=12) print *,122
write(21,*) k1,k2
end subroutine
end
use m1
call p(1)
call p(11,12)
print *,'pass'
end
