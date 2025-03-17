
program main
  integer(2)::i2=5,x=10

  !$omp parallel
    !$omp atomic
      i2=i2+1
    !$omp atomic
      i2=i2-1
  !$omp end parallel

  if (i2 .ne. 5) print *,"NG(1) : i2 = ", i2

  !$omp parallel
    !$omp atomic
      i2=i2*2
    !$omp atomic
      i2=i2/2
  !$omp end parallel

  if (i2 .ne. 5) print *,"NG(2) : i2 = ", i2

  !$omp parallel
    !$omp atomic
      i2=MAX(i2,x)
  !$omp end parallel

  if (i2 .ne. 10) print *,"NG(3) : i2 = ", i2
  i2 = 5

  !$omp parallel
    !$omp atomic
      i2=MIN(i2,x)
  !$omp end parallel

  if (i2 .ne. 5) print *,"NG(4) : i2 = ", i2

  !$omp parallel
    !$omp atomic
      i2=IAND(i2,x)
  !$omp end parallel

  if (i2 .ne. 0) print *,"NG(5) : i2 = ", i2
  i2 = 5

  !$omp parallel
    !$omp atomic
      i2=IOR(i2,x)
  !$omp end parallel

  if (i2 .ne. x + 5) print *,"NG(6) : i2 = ", i2
  i2 = 5

  !$omp parallel
    !$omp atomic
      i2=IEOR(i2,x)
  !$omp end parallel

  if (i2 .ne. 5 .and. i2 .ne. 15) print *,"NG(7) : i2=",i2
  print *,"pass"

end program main
