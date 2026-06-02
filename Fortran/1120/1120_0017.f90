program main
  !$omp parallel
    !$omp do
    do i=0,10
      !$omp task
      !$omp end task
      !$omp taskwait
    end do
  !$omp end parallel
end program main
