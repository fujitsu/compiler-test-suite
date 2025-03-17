
program main
  integer :: a=0,b=15
!$omp parallel
!$omp single private(a)
  a=b+5;
!$omp end single
!$omp end parallel
  print *,"pass"
end program main
