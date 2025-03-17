
program main
  integer i,a
  !$omp parallel
  !$omp do reduction(+:a)
    do i=0,20
      a=a+1
    end do
  !$omp end parallel
  print *,"pass"
end program main
