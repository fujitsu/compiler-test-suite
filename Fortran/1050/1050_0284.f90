
program main
  integer :: a=0,b=120
!$omp parallel
!$omp single private(a)
  a=b+30;
!$omp end single nowait
!$omp end parallel
  print *,"pass"
end program main
