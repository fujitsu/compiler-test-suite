save /com/
!$omp threadprivate(/com/)
!$omp parallel 
  !$omp single
  !$omp end single copyprivate(/com/)
!$omp end parallel
common /com/ a
end
