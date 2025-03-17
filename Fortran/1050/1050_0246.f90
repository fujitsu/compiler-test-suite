
program main
  !$ use omp_lib
  integer(4)::i4=5,x=10,max_th=1
  integer(8)::a=10
  !$ max_th = omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      i4=i4+a
  !$omp end parallel

  if (i4 .ne. 5 + (max_th * a)) print *,"NG(1) : i4 = ", i4, " max_th = ", max_th
  i4=5

  !$omp parallel
    !$omp atomic
      i4=i4+1
    !$omp atomic
      i4=i4-1
  !$omp end parallel

  if (i4 .ne. 5) print *,"NG(2) : i4 = ", i4

  !$omp parallel
    !$omp atomic
      i4=i4*2
    !$omp atomic
      i4=i4/2
  !$omp end parallel

  if (i4 .ne. 5) print *,"NG(3) : i4 = ", i4

  !$omp parallel
    !$omp atomic
      i4=MAX(i4,x)
  !$omp end parallel

  if (i4 .ne. 10) print *,"NG(4) : i4 = ", i4
  i4=5

  !$omp parallel
    !$omp atomic
      i4=MIN(i4,x)
  !$omp end parallel

  if (i4 .ne. 5) print *,"NG(5) : i4 = ", i4

  !$omp parallel
    !$omp atomic
      i4=IAND(i4,x)
  !$omp end parallel

  if (i4 .ne. 0) print *,"NG(6) : i4 = ", i4
  i4=5

  !$omp parallel
    !$omp atomic
      i4=IOR(i4,x)
  !$omp end parallel

  if (i4 .ne. x+5) print *,"NG(7) : i4 = ", i4
  i4=5

  !$omp parallel
    !$omp atomic
      i4=IEOR(i4,x)
  !$omp end parallel

  if (i4 .ne. 5 .and. i4 .ne. 15) print *,"NG(8) : i4= ",i4
  print *,"pass"

end program main
