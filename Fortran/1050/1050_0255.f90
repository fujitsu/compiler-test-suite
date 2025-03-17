
program main
  integer(4)::i4
  i4=100

  !$omp parallel
    !$omp critical(crit002)
      i4=(i4+i4)/i4
    !$omp end critical(crit002)
  !$omp end parallel

  if (i4.ne.2) print *,"NG = ",i4
  print *,"pass"

end program main
