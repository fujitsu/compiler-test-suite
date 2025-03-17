
program main
  !$ use omp_lib
  logical(4)::l4=.false.,x=.true.
  integer(4)::a=0,max_th=1
  !$ max_th=omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      l4=l4.AND.x
  !$omp end parallel

  if (l4) print *,"NG(1) : l4 = ", l4

  !$omp parallel
    !$omp atomic
      l4=l4.OR.x
  !$omp end parallel

  if (.not.l4) print *,"NG(2) : l4 = ", l4

  !$omp parallel
    !$omp atomic
      l4=l4.EQV.x
  !$omp end parallel

  if (.not.l4) print *,"NG(3) : l4 = ", l4
  l4=.false.

  !$omp parallel
    !$omp atomic
      l4=l4.NEQV.x
  !$omp end parallel

  a=mod(max_th,2)
  if (l4.and.a.eq.0) print *,"NG(4) : l4 = ", l4
  if (.not.l4.and.a.eq.1) print *,"NG(5) : l4 = ", l4
  print *,"pass"

end program main
