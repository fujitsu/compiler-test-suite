subroutine s1
common /cmn/ k1
!$omp threadprivate(/cmn/)
call ss1
contains
subroutine ss1
common /cmn/ k1
!$omp threadprivate(/cmn/)
k1=1
!$omp parallel copyin (k1)
if (k1/=1) print *,1131
!$omp end parallel

!$omp parallel copyin (/cmn/)
if (k1/=1) print *,2131
!$omp end parallel
end subroutine
end
call s1
print *,'pass'
end
