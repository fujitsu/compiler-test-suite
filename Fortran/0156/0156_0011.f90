module m1
integer ::n1,n2=1
common /cmn1/ i1,i2
common /cmn2/ k1,k2
!$omp threadprivate(n1,n2,/cmn1/,/cmn2/)
end
 subroutine s1
use  m1
common /cmn2/ kk1,kk2
!$omp threadprivate(/cmn2/)
write(1,*) n2
write(1,*) i2
write(1,*) kk2
write(1,*) k2
end
 subroutine s2
use  m1
common /cmn2/ kk1,kk2
!$omp threadprivate(/cmn2/)
write(2,*) n2
write(2,*) i2
write(2,*) kk2
write(2,*) k2
end

use  m1
common /cmn2/ kk1,kk2
!$omp threadprivate(/cmn2/)
call s1
call s2
write(3,*) n2
write(3,*) i2
write(3,*) kk2
write(3,*) k2
call chk(1)
call chk(2)
call chk(3)
print *,'pass'
end

block data
!$omp threadprivate(/cmn1/,/cmn2/)
common /cmn1/ i1,i2
common /cmn2/ k1,k2
data i2/1/,k2/1/
end
subroutine chk(kk)
rewind (kk)
read(kk,*) n;if(n/=1) print *,kk,2001
read(kk,*) n;if(n/=1) print *,kk,2002
read(kk,*) n;if(n/=1) print *,kk,2003
read(kk,*) n;if(n/=1) print *,kk,2004
end
