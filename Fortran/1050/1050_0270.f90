
program main
  integer i,a
  a=10
  !$omp parallel
    !$omp do schedule(dynamic,1)
      do i=0,10
        a=i+a
     end do
    !$omp end do nowait
  !$omp end parallel
  print *,"pass"
end program main
