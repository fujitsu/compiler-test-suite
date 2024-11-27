save /com/
!$omp threadprivate(/com/)
!$omp parallel copyin(/com/)
!$omp end parallel
common /com/ a
end
