
program main
  integer i,a
  a=10
  !$omp parallel
    !$omp do schedule(dynamic,1)
    do i=0,10
      a=a+i
    end do
  !$omp end parallel
  print *,"pass"
end program main
