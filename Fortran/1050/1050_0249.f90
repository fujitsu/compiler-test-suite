
program main
  !$ use omp_lib
  real(8)::r8=5,x=10,max_th=1
  real(16)::a=10
  !$ max_th=omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      r8=r8+a
  !$omp end parallel

  if (r8.ne.5+(max_th*a)) print *,"NG(1) : r8 = ", r8, " max_th = ", max_th
  r8=5

  !$omp parallel
    !$omp atomic
      r8=r8+1
    !$omp atomic
      r8=r8-1
  !$omp end parallel

  if (r8.ne.5) print *,"NG(2) : r8 = ", r8

  !$omp parallel
    !$omp atomic
      r8=r8*2
    !$omp atomic
      r8=r8/2
  !$omp end parallel

  if (r8.ne.5) print *,"NG(3) : r8 = ", r8

  !$omp parallel
    !$omp atomic
      r8=MAX(r8,x)
  !$omp end parallel

  if (r8.ne.10) print *,"NG(4) : r8 = ", r8
  r8=5

  !$omp parallel
    !$omp atomic
      r8=MIN(r8,x)
  !$omp end parallel

  if (r8.ne.5) print *,"NG(5) : r8 = ", r8
  print *,"pass"

end program main
