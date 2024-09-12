module m1
 common /cmn/ k1,k2
 integer n1
!$omp threadprivate(/cmn/,n1)
namelist /nam/ k1,k2,n1
end
subroutine s1
use m1
n1=1;k1=10;k2=11
write(1,nam)
end
subroutine s2
namelist /nam/ k1,k2,n1
rewind 1
read(1,nam)
if (n1/=1)print *,101
if (k1/=10)print *,102
if (k2/=11)print *,103
end
call s1
call s2
print *,'pass'
end
