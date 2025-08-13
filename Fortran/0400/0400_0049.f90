module m1
procedure (zzz),pointer :: p
interface p
  procedure xxx,yyy,p
end interface
private xxx
contains
subroutine xxx(k1)
if (k1/=1) print *,101
write(20,*) k1
end subroutine
subroutine yyy(k1,k2)
if (k1/=11) print *,111
if (k2/=12) print *,121
write(20,*) k1,k2
end subroutine
subroutine zzz(k1,k2,k3)
if (k1/=21) print *,112
if (k2/=22) print *,122
if (k3/=23) print *,132
write(20,*) k1,k2,k3
end subroutine
end
use m1
p=>zzz
call p(1)
call p(11,12)
call p(21,22,23)
call chk
print *,'pass'
end
subroutine chk
rewind 20
read(20,*) k1
if (k1/=1) print *,211
read(20,*) k1,k2
if (k1/=11) print *,211
if (k2/=12) print *,221
read(20,*) k1,k2,k3
if (k1/=21) print *,311
if (k2/=22) print *,321
if (k3/=23) print *,331
end
