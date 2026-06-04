integer::n=100
integer i, j, x
x = 100
!$omp task default(firstprivate)
!$omp task default(firstprivate)
!$omp parallel shared(x) private(i, j)
!$omp do collapse(2_1)
do i = 1, n
do j = 1, n
!$omp critical
x = x + 1
!$omp end critical
end do
end do
!$omp end parallel
!$omp task
!$omp task
if(x/=10100) print *,'err1'
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp task
!$omp parallel shared(x) private(i, j)
!$omp do collapse(2_1)
do i = 1, n
do j = 1, n
!$omp critical
x = x + 1
!$omp end critical
end do
end do
!$omp end parallel
!$omp task
!$omp task
if(x/=10100) print *,'err2'
!$omp end task
!$omp end task
!$omp end task
print *,'pass'
end
