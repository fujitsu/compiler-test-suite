  program main

  !$omp single private(a) firstprivate(b)
  !$omp end single

  !$omp single firstprivate(b) private(a)
  !$omp end single

  a = 1
  b = a
  a = b

  print *, " *** pass *** "

  end program main
