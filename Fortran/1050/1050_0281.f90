
program main
  integer a,b
  a=5
  b=10
  !$omp parallel
    !$omp sections lastprivate(a)
      !$omp section
        a=b+1
      !$omp section
        b=b+1
    !$omp end sections
  !$omp end parallel
  print *,"pass"
end program main
