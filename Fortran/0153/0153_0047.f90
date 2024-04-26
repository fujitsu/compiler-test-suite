module m1
procedure (zzz),pointer :: p
interface px
  procedure p
end interface
private xxx
contains
subroutine zzz(k1,k2,k3)
if (k1/=1) print *,112
if (k2/=2) print *,122
if (k3/=3) print *,132
write(1,*) k1,k2,k3
end subroutine
end
use m1
p=>zzz
call px(1,2,3)
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) k1,k2,k3
if (k1/=1) print *,311
if (k2/=2) print *,321
if (k3/=3) print *,331
end
