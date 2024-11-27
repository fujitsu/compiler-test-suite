integer :: a,b,c,d
common/com/a,b,c,d
!$omp parallel firstprivate(/com/) private(/com/)
!$omp end parallel
!$omp parallel firstprivate(/com/) shared(/com/)
!$omp end parallel
!$omp parallel private(/com/) firstprivate(/com/)
!$omp end parallel
!$omp parallel shared(/com/) firstprivate(/com/)
!$omp end parallel
end
