i=8
!$omp parallel reduction(max:i)
!$omp do
do i=1,10
end do
!$omp enddo
!$omp end parallel
if (i/=8) print *,1
print *,'pass'
end
