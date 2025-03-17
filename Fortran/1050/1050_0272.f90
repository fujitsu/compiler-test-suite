
program main
  integer i,a,q
  a=10
  q=25
  !$omp parallel
    !$omp do schedule(runtime)
      do i=0,10
        a=i+q
     end do
    !$omp end do nowait
  !$omp end parallel
  print *,"pass"
end program main
