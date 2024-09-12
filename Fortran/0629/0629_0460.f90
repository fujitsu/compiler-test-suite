  program main
  implicit integer(a-z)

  !$omp do firstprivate(b) lastprivate(b)
  do a = 1,2
  end do

  !$omp do firstprivate(b) lastprivate(b) schedule(dynamic)
  do b = 1,2
  end do
  print *,'ok'
  end program main
