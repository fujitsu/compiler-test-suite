call sss
print *,'pass'
contains
subroutine sss
integer,parameter::n=10
integer::k(1)
k = 10
!$omp task
!$omp task
!$omp parallel shared(x) private(i, j)
!$omp do collapse(2_8)
do i = 1, n
do j = 1, n
!$omp critical
k(1) = k(1) + 1
!$omp end critical
end do
end do
!$omp end parallel
if(k(1)/=110) print *,'err'
!$omp end task
!$omp task
!$omp parallel shared(x) private(i, j)
!$omp do collapse(2_8)
do i = 1, n
do j = 1, n
!$omp critical
k(1) = k(1) + 1
!$omp end critical
end do
end do
!$omp end parallel
if(k(1)/=110) print *,'err'
!$omp end task
!$omp end task
end subroutine sss
end
