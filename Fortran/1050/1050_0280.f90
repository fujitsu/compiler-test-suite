
program main
  integer a,b
  a=0
  b=0
  !$omp parallel
    !$omp sections
      !$omp section
        a=a+1
      !$omp section
        b=b+1
    !$omp end sections nowait
  !$omp end parallel
  print *,"pass"
end program main
