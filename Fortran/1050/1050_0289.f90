
program main
  integer :: a=0
!$omp parallel
!$omp single
  a=a+1;
!$omp end single nowait
!$omp end parallel
  print *,"pass"
end program main
