
program main
  integer i,a
  a=10
  !$omp parallel
    !$omp do lastprivate(a)
      do i=0,20
        a=i
      end do
  !$omp end parallel
  print *,"pass"
end program main
