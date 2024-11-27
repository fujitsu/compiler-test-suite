integer,allocatable :: a[:]
!$omp simd aligned(a)
do i=1,1
end do
!$omp endsimd
end
