integer :: a,b,c,d
common/com/a,b,c,d
!$omp parallel private(/com/) shared(/com/)
!$omp end parallel
!$omp parallel private(/com/) firstprivate(/com/)
!$omp end parallel
!$omp parallel do private(/com/) lastprivate(/com/)
  do i=1,2
  end do
!$omp end parallel do
end
