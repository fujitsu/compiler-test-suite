call sss
call sss
print *,'pass'
end
subroutine sss
integer,parameter::n=100
integer i, j, z
z = 10
!$omp task
!$omp parallel
!$omp task
!$omp parallel shared(z) private(i, j)
!$omp do collapse(kind(2_2))
do i = 1, n
do j = 1, n
!$omp critical
z = z + 1
!$omp end critical
end do
end do
!$omp end parallel
!$omp end task
!$omp end parallel
!$omp end task
end
