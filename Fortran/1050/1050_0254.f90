
program main
  !$ use omp_lib
  logical(8)::l8=.false.,x=.true.
  integer(4)::a=0,max_th=1
  !$ max_th=omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      l8=l8.AND.x
  !$omp end parallel

  if (l8) print *,"NG(1) : l8 = ", l8

  !$omp parallel
    !$omp atomic
      l8=l8.OR.x
  !$omp end parallel

  if (.not.l8) print *,"NG(2) : l8 = ", l8

  !$omp parallel
    !$omp atomic
      l8=l8.EQV.x
  !$omp end parallel

  if (.not.l8) print *,"NG(3) : l8 = ", l8
  l8=.false.

  !$omp parallel
    !$omp atomic
      l8=l8.NEQV.x
  !$omp end parallel

  a=mod(max_th,2)
  if (l8.and.a.eq.0) print *,"NG(4) : l8 = ", l8
  if (.not.l8.and.a.eq.1) print *,"NG(5) : l8 = ", l8
  print *,"pass"

end program main
