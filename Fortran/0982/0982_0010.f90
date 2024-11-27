parameter ( n = 200 )
integer, allocatable, dimension (:) :: A
integer i
call omp_set_dynamic(.false.)
call omp_set_num_threads(16)
allocate (A(n))
!$omp parallel private (A, i)
      do i = 1, n
         A(i) = i
      end do
if(A(38)/=38) print *,'err'
!$omp end parallel
print *,'pass'
end
