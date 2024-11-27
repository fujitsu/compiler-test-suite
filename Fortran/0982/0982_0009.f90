parameter ( n = 10 )
integer, allocatable, dimension (:) :: A
integer i
call omp_set_num_threads(2)
allocate (A(n))
!$omp parallel private (A, i)
 do i = 1, n
   A(i) = i
 end do
if(A(3)/=3) print *,'err'
!$omp end parallel
print *,'pass'
end
