common /com01/ i,j,k
equivalence (i,ie)
print *,'pass'
!$omp parallel private(i)
!$omp parallel private(i)
do i=1,10
end do
!$omp end parallel
!$omp end parallel

!$omp parallel private(i)
!$omp parallel private(/com01/)
do i=1,10
end do
!$omp end parallel
!$omp end parallel

!$omp parallel private(/com01/)
!$omp parallel private(i)
do i=1,10
end do
!$omp end parallel
!$omp end parallel

!$omp parallel private(/com01/)
!$omp parallel private(/com01/)
do i=1,10
end do
!$omp end parallel
!$omp end parallel

!$omp parallel private(i)
do i=1,10
!$omp parallel private(/com01/)
!$omp end parallel
end do
!$omp end parallel

!$omp parallel private(i)
do i=1,10
!$omp parallel private(i)
!$omp end parallel
end do
!$omp end parallel

!$omp parallel private(/com01/)
do i=1,10
!$omp parallel private(i)
!$omp end parallel
end do
!$omp end parallel

!$omp parallel private(/com01/)
do i=1,10
!$omp parallel private(/com01/)
!$omp end parallel
end do
!$omp end parallel

end
