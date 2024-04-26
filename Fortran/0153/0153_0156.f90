subroutine s1
common /cmn/ k1
!$omp threadprivate(/cmn/)
integer omp_get_thread_num
k1=1
!$omp parallel copyin (k1)
if (k1/=1) print *,1131
!$omp end parallel
!$omp parallel copyin (k1)
if (k1/=1) print *,1132
!$omp end parallel

!$omp parallel copyin (/cmn/)
if (k1/=1) print *,1132
!$omp end parallel
!$omp parallel copyin (/cmn/)
if (k1/=1) print *,1132
!$omp end parallel
end
call s1
print *,'pass'
end
