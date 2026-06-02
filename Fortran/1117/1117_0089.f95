  program main

  !$omp sections private(a) firstprivate(b) lastprivate(c) reduction(+:d)
    b = 0
    a = b
  !$omp end sections

  !$omp sections firstprivate(b) lastprivate(c) reduction(+:d) private(a)
    c=0
    b = c
  !$omp end sections

  !$omp sections lastprivate(c) reduction(+:d) private(a) firstprivate(b)
    c = d
  !$omp end sections

  !$omp sections reduction(+:d) private(a) firstprivate(b) lastprivate(c)
    a = 0
    d = a
  !$omp end sections

  print *, " *** pass *** "

  end program main
