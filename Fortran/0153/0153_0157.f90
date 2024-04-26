subroutine s1
common /cmn/ k1
equivalence (k1,k2,k3,k4)
!$omp threadprivate(/cmn/)
k1=1
!$omp parallel copyin (k1)
if (k1/=1) print *,1131
if (k2/=1) print *,1132
if (k3/=1) print *,1133
if (k4/=1) print *,1134
!$omp end parallel

!$omp parallel copyin (/cmn/)
if (k1/=1) print *,2131
if (k2/=1) print *,2132
if (k3/=1) print *,2133
if (k4/=1) print *,2134
!$omp end parallel
end
call s1
print *,'pass'
end
