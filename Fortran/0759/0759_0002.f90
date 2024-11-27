save /com/
!$omp parallel firstprivate(/com/)
!$omp end parallel
common /com/ a
end
