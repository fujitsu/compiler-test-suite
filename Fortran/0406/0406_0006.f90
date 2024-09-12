save /com/
!$omp threadprivate(/com/)
common /com/ a
a=2
!$omp parallel copyin(/com/)
  if (a/=2) print *,'err'
!$omp end parallel
print *,'pass'
end
