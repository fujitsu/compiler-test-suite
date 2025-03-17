
program main
  !$ use omp_lib
  logical(2)::l2=.false.,x=.true.
  integer(4)::a=0,max_th=1
  !$ max_th=omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      l2=l2.AND.x
  !$omp end parallel

  if (l2) print *,"NG(1) : l2 = ", l2

  !$omp parallel
    !$omp atomic
      l2=l2.OR.x
  !$omp end parallel

  if (.not.l2) print *,"NG(2) : l2 = ", l2

  !$omp parallel
    !$omp atomic
      l2=l2.EQV.x
  !$omp end parallel

  if (.not.l2) print *,"NG(3) : l2 = ", l2
  l2=.false.

  !$omp parallel
    !$omp atomic
      l2=l2.NEQV.x
  !$omp end parallel

  a=mod(max_th,2)
  if (l2.and.a.eq.0) print *,"NG(4) : l2 = ", l2
  if (.not.l2.and.a.eq.1) print *,"NG(5) : l2 = ", l2
  print *,"pass"

end program main
