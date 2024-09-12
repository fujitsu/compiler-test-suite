module m1
procedure (zzz),pointer :: p
private xxx
contains
subroutine zzz(k1,k2,k3)
if (k1/=1) print *,112
if (k2/=2) print *,122
if (k3/=3) print *,132
write(1,*) k1,k2,k3
end subroutine
end

module m11
use m1,only:p
interface px
  procedure p
end interface
private::p
end 

module m2
use m11,only:px
end

module m3
use m2,only:px
end

module m4
use m1,only:zzz,p
use m2,only:px
end

use m4
implicit none
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
