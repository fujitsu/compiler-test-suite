call sss
call sss
print *,'pass'
end
subroutine sss
integer,parameter::n=10
integer i, j, z
z = 10
!$omp task
!$omp parallel
!$omp task
!$omp parallel shared(z) private(i, j)
!$omp  simd collapse(kind(2_2))
do i = 1, n
do j = 1, n
z = z + 1
end do
end do
!$omp end parallel
!$omp  simd
do i=1,1
   end do
!$omp end task
!$omp end parallel
!$omp end task
end
