
program main
  !$ use omp_lib
  logical(1)::l1=.false.,x=.true.
  integer(4)::a=0,max_th=1
  !$ max_th=omp_get_max_threads()

  !$omp parallel
    !$omp atomic
      l1=l1.AND.x
  !$omp end parallel

  if (l1) print *,"NG(1) : l1 = ", l1

  !$omp parallel
    !$omp atomic
      l1=l1.OR.x
  !$omp end parallel

  if (.not.l1) print *,"NG(2) : l1 = ", l1

  !$omp parallel
    !$omp atomic
      l1=l1.EQV.x
  !$omp end parallel

  if (.not.l1) print *,"NG(3) : l1 = ", l1
  l1=.false.

  !$omp parallel
    !$omp atomic
      l1=l1.NEQV.x
  !$omp end parallel

  a=mod(max_th,2)
  if (l1.and.a.eq.0) print *,"NG(4) : l1 = ", l1
  if (.not.l1.and.a.eq.1) print *,"NG(5) : l1 = ", l1
  print *,"pass"

end program main
