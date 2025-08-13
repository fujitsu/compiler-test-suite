module m1
interface 
subroutine zzz(k1,k2,k3)
end subroutine 
end interface

interface zzz
  procedure xxx,yyy,zzz
end interface
contains
subroutine xxx(k1)
if (k1/=1) print *,101
write(19,*) k1
end subroutine
subroutine yyy(k1,k2)
if (k1/=21) print *,111
if (k2/=22) print *,121
write(19,*) k1,k2
end subroutine
end
use m1
call zzz(1)
call zzz(21,22)
call zzz(11,12,13)
call chk
print *,'pass'
end
subroutine chk
rewind 19
read(19,*) k1
if (k1/=1) print *,211
read(19,*) k1,k2
if (k1/=21) print *,211
if (k2/=22) print *,221
read(19,*) k1,k2,k3
if (k1/=11) print *,313
if (k2/=12) print *,323
if (k3/=13) print *,333
end
subroutine zzz(k1,k2,k3)
if (k1/=11) print *,311
if (k2/=12) print *,321
if (k3/=13) print *,331
write(19,*) k1,k2,k3
end subroutine
