integer ::a(100,100)
!$omp parallel 
!$omp simd collapse(2)
do i=1,1
do j=1,1
end do
end do
!$omp end simd
!$omp end parallel
print *,'pass'
end
