i=100
!$omp parallel default(firstprivate)
!$omp  do
do i=1,10
end do
!$omp end parallel

!$omp parallel default(firstprivate)
i=1
!$omp  do
do i=1,10
end do
!$omp end parallel

!$omp parallel do collapse(1) default(private)
do i=1,10
end do
!$omp end parallel do

print *,"pass"
end
