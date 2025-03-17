
program main
  integer(4)::i4
  i4=100

  !$omp parallel
    !$omp critical
      i4=(i4+i4)/i4
    !$omp end critical
  !$omp end parallel

  if (i4.ne.2) print *,"NG = ",i4
  print *,"pass"

end program main
