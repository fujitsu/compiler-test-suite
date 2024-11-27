parameter ( n = 100 )
integer, allocatable, dimension (:) :: a
integer i
call omp_set_num_threads(4)
allocate (a(n))
!$omp parallel firstprivate(a) private(i)
do i = 1, n
a(i) = i
end do
if(a(51)/=51) print *,'err'
!$omp end parallel
print *,'pass'
end
