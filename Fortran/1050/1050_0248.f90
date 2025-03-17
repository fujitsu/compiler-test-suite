
program main
  !$ use omp_lib
  real(4)::r4=5,x=10,max_th=1
  real(8)::a=10
  !$ max_th=omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      r4=r4+a
  !$omp end parallel

  if (r4.ne.5+(max_th*a)) print *,"NG(1) : r4 = ", r4, " max_th = ", max_th
  r4=5

  !$omp parallel
    !$omp atomic
      r4=r4+1
    !$omp atomic
      r4=r4-1
  !$omp end parallel

  if (r4.ne.5) print *,"NG(2) : r4 = ", r4

  !$omp parallel
    !$omp atomic
      r4=r4*2
    !$omp atomic
      r4=r4/2
  !$omp end parallel

  if (r4.ne.5) print *,"NG(3) : r4 = ", r4

  !$omp parallel
    !$omp atomic
      r4=MAX(r4,x)
  !$omp end parallel

  if (r4.ne.10) print *,"NG(4) : r4 = ", r4
  r4=5

  !$omp parallel
    !$omp atomic
      r4=MIN(r4,x)
  !$omp end parallel

  if (r4.ne.5) print *,"NG(5) : r4 = ", r4
  print *,"pass"

end program main
