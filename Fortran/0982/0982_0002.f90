parameter(n=50)
integer, allocatable, dimension (:) :: a
integer i
call omp_set_num_threads(4)
allocate (a(n))
!$omp parallel firstprivate(A) private(i)
do i = 1, n
a(i) = i
end do
if(a(38)/=38) print *,'err'
!$omp end parallel
print *,'pass'
end
