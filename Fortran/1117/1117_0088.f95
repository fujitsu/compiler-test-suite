  program main

  common /com/ e

  !$omp threadprivate(/com/)

  !$omp parallel private(a) shared(b) default(none) firstprivate(c)
  !$omp end parallel

  !$omp parallel shared(b) default(none) firstprivate(c) reduction(+:d)
  !$omp end parallel

  !$omp parallel default(none) firstprivate(c) reduction(+:d) if(.true.)
  !$omp end parallel

  !$omp parallel firstprivate(c) reduction(+:d) if(.true.) copyin(e)
  !$omp end parallel

  !$omp parallel reduction(+:d) if(.true.) copyin(e) private(a)
  !$omp end parallel

  !$omp parallel if(.true.) copyin(e) private(a) shared(b)
  !$omp end parallel

  !$omp parallel copyin(e) private(a) shared(b) default(none)
  !$omp end parallel

  d = e
  c = d
  b = c
  a = b
  e = a

  print *, " *** pass *** "

  end program main
   block data
  common /com/ e
  !$omp threadprivate(/com/)
  data e/0/
  end
