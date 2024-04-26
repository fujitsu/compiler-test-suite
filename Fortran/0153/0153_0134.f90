subroutine s1
common /cmn/ k1,k2
k1=1
k2=2
!$omp parallel firstprivate(/cmn/)
if (k1/=1) print *,101
if (k2/=2) print *,102
k1=11
k2=12
!$omp end parallel
if (k1/=1) print *,111
if (k2/=2) print *,112
end
call s1
print *,'pass'
end
