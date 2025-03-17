
program main
  !$ use omp_lib
  integer(8)::i8=5,x=10,max_th=1
  real(8)::a=10
  !$ max_th=omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      i8=i8+a
  !$omp end parallel

  if (i8.ne.5+(max_th*a)) print *,"NG(1) : i8 = ", i8, " max_th = ", max_th
  i8=5

  !$omp parallel
    !$omp atomic
      i8=i8+1
    !$omp atomic
      i8=i8-1
  !$omp end parallel

  if (i8.ne.5) print *,"NG(2) : i8 = ", i8

  !$omp parallel
    !$omp atomic
      i8=i8*2
    !$omp atomic
      i8=i8/2
  !$omp end parallel

  if (i8.ne.5) print *,"NG(3) : i8 = ", i8

  !$omp parallel
    !$omp atomic
      i8=MAX(i8,x)
  !$omp end parallel

  if (i8.ne.10) print *,"NG(4) : i8 = ", i8
  i8=5

  !$omp parallel
    !$omp atomic
      i8=MIN(i8,x)
  !$omp end parallel

  if (i8.ne.5) print *,"NG(5) : i8 = ", i8

  !$omp parallel
    !$omp atomic
      i8=IAND(i8,x)
  !$omp end parallel

  if (i8.ne.0) print *,"NG(6) : i8 = ", i8
  i8=5

  !$omp parallel
    !$omp atomic
      i8=IOR(i8,x)
  !$omp end parallel

  if (i8.ne.x+5) print *,"NG(7) : i8 = ",i8
  i8=5

  !$omp parallel
    !$omp atomic
      i8=IEOR(i8,x)
  !$omp end parallel

  if (i8.ne.5.and.i8.ne.15) print *,"NG(8) : i8= ",i8
  print *,"pass"

end program main
