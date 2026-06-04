!$omp task private(i)
  i=1

!$omp parallel
!$omp task
  i=2
!$omp end task
!$omp end parallel

!$omp end task
print *,'pass'
end
