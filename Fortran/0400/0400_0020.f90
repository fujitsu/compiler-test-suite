module m1
interface xxx
  procedure xxx,yyy
end interface
contains
subroutine xxx(k1)
if (k1/=1) print *,101
write(17,*) k1
end subroutine
subroutine yyy(k1,k2)
if (k1/=1) print *,111
if (k2/=2) print *,121
write(17,*) k1,k2
end subroutine
end
use m1
call xxx(1)
call xxx(1,2)
call chk
print *,'pass'
end
subroutine chk
rewind 17
read(17,*) k1
if (k1/=1) print *,211
read(17,*) k1,k2
if (k1/=1) print *,211
if (k2/=2) print *,221
end
