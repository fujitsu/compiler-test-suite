  program main

  !$omp parallel
  !$omp single
  i = 555
  !$omp end single
  !$omp barrier
  !$omp do lastprivate(i)
  do i = 1,2
  end do

  !$omp single
    if (i .ne. 3) print *," +++ NG +++ "
  !$omp endsingle
  !$omp end parallel

  !$omp parallel shared(i)
  !$omp single
  i = 555
  !$omp endsingle
  !$omp barrier
  !$omp do lastprivate(i)
  do i = 1,2
  end do

  !$omp single
    if (i .ne. 3) print *," +++ NG +++ "
  !$omp endsingle
  !$omp end parallel

  !$omp parallel default(shared)
  !$omp master
  i = 555
  !$omp end master
  !$omp barrier
  !$omp do lastprivate(i)
  do i = 1,2
  end do

  !$omp single
    if (i .ne. 3) print *," +++ NG +++ "
  !$omp endsingle
  !$omp end parallel

  !$omp parallel default(none),shared(i)
  !$omp master
  i = 555
  !$omp end master
  !$omp barrier
  !$omp do lastprivate(i)
  do i = 1,2
  end do

  !$omp single
    if (i .ne. 3) print *," +++ NG +++ "
  !$omp endsingle
  !$omp end parallel

    print *, " *** pass *** "

  end program main
