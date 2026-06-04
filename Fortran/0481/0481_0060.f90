!$omp parallel
!$omp cancel parallel  if(.true.)
!$omp end parallel
print *,'pass'
end
