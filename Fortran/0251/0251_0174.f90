call omp_set_num_threads(2)
call ss

contains
subroutine ss
block
integer :: th
integer ::omp_get_num_threads
!$OMP PARALLEL
th=omp_get_num_threads()
print*,th
!$OMP END PARALLEL
end block
end subroutine
end
