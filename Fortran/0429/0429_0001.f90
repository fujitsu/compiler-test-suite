i=8
!$omp parallel firstprivate(i)
!$omp do
do i=1,10
end do
!$omp enddo
!$omp end parallel
if (i /= 8) print *,i
print *,'pass'
end
