  implicit none
  integer, pointer :: p, q(:)
  allocate( p, q(3) )
  p = 10

  !$omp task default(none)
  !$omp task
      q(1) = 100
  !$omp end task
  !$omp end task

end
