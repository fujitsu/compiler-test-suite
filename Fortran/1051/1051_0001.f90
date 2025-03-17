subroutine work(a,j,k)
  real::a
  integer::j,k
  a=j+k
end

program test
  use omp_lib
  real::a
  integer::j,k
  !$omp parallel num_threads(2)
  !$omp do collapse(2) ordered private(j,k) schedule(static,3)
  do k = 1,3
     do j = 1,2
        !$omp ordered
           print *, omp_get_thread_num(), k, j
        !$omp end ordered
        call work(a,j,k)
     enddo
  enddo
  !$omp end do
  !$omp end parallel
  print *, "pass"
end program test
