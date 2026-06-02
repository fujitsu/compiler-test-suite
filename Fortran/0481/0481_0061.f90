integer:: i=1
!$omp parallel
!$omp cancel parallel  if(i.eq.1)
!$omp end parallel
print *,'pass'
end
