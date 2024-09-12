save /com/
!$omp threadprivate(/com/)
common /com/ a
!$omp parallel 
  a=2
  !$omp single
    a=1
  !$omp end single copyprivate(/com/)
  if (a/=1) print *,'err'
!$omp end parallel
print *,'pass'
end
