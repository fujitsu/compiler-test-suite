save /com/
!$omp parallel private(/com/)
!$omp end parallel
common /com/ a
end
