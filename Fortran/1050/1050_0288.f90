
program main
  integer :: a=0
!$omp parallel private(a)
  a=0
!$omp single
  a=a+1;
!$omp end single copyprivate(a)
!$omp end parallel
  print *,"pass"
end program main
