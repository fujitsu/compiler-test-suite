module m1
procedure (zzz),pointer :: p
interface px
  procedure xxx,yyy,p
end interface
private xxx
contains
subroutine xxx(k1)
if (k1/=1) print *,101
write(18,*) k1
end subroutine
subroutine yyy(k1,k2)
if (k1/=1) print *,111
if (k2/=2) print *,121
write(18,*) k1,k2
end subroutine
subroutine zzz(k1,k2,k3)
if (k1/=1) print *,112
if (k2/=2) print *,122
if (k3/=3) print *,132
write(18,*) k1,k2,k3
end subroutine
end
use m1,xxx=>px
p=>zzz
call xxx(1)
call xxx(1,2)
call xxx(1,2,3)
call chk
print *,'pass'
end
subroutine chk
rewind 18
read(18,*) k1
if (k1/=1) print *,211
read(18,*) k1,k2
if (k1/=1) print *,211
if (k2/=2) print *,221
read(18,*) k1,k2,k3
if (k1/=1) print *,311
if (k2/=2) print *,321
if (k3/=3) print *,331
end
