module m1
procedure (zzz),pointer :: p
contains
subroutine s1
interface pz
  procedure xxx,p
end interface
call pz(1)
call pz(21,22)
end subroutine
subroutine xxx(k1)
if (k1/=1) print *,101
write(1,*) k1
end subroutine
subroutine zzz(k1,k2)
if (k1/=21) print *,112
if (k2/=22) print *,122
write(1,*) k1,k2
end subroutine
end
use m1
p=>zzz
call s1
rewind 1
read(1,*) k1
if (k1/=1) print *,201
read(1,*) k1,k2
if (k1/=21) print *,212
if (k2/=22) print *,222
print *,'pass'
end
