subroutine s2
common /cmn/ k1,k2
!$omp threadprivate(/cmn/)
k1=1
k2=1
!$omp parallel private(k1)
k1=2
k2=2
!$omp parallel copyin (/cmn/)
k1=k1+1
k2=k2+1
!$omp end parallel
k1=k1+1
k2=k2+1
!$omp end parallel
end
call s2
print *,'pass'
end

