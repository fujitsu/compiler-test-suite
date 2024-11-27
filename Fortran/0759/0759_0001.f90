save /com/
!$omp parallel shared(/com/)
!$omp end parallel
common /com/ a
end
