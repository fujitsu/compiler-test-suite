  program main

  implicit integer(a-z)
  common /com/e

  !$omp threadprivate(/com/)

  !$omp parallelsections private(a) shared(b) default(none) firstprivate(c)
  !$omp end parallel sections

  !$omp parallelsections shared(b) default(none) firstprivate(c) reduction(+:d)
  !$omp end parallel sections

  !$omp parallelsections default(none) firstprivate(c) reduction(+:d)if(.true.)
  !$omp end parallel sections

  !$omp parallelsections firstprivate(c) reduction(+:d) if(.true.) copyin(e)
  !$omp end parallel sections

  !$omp parallelsections reduction(+:d) if(.true.) copyin(e) lastprivate(f)
  !$omp end parallel sections

  !$omp parallelsections if(.true.) copyin(e) lastprivate(f) private(a)
  !$omp end parallel sections

  !$omp parallelsections copyin(e) lastprivate(f) private(a) shared(b)
  !$omp end parallel sections

  !$omp parallelsections lastprivate(f) private(a) shared(b) default(none)
  !$omp end parallel sections

  e = f
  d = e
  c = d
  b = c
  a = b
  f = a

  print *, " *** pass *** "

  end program main
