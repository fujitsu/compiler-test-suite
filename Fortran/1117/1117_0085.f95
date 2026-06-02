  program main

!$omp parallel

!$omp do schedule(static)
  do i = 1,2
  end do

!$omp do schedule(static,1)
  do i = 1,2
  end do

!$omp do schedule(dynamic)
  do i = 1,2
  end do

!$omp do schedule(dynamic,(1))
  do i = 1,2
  end do

!$omp do schedule(guided)
  do i = 1,2
  end do

!$omp do schedule(guided,1*1-1+1/1)
  do i = 1,2
  end do

!$omp do schedule(runtime)
  do i = 1,2
  end do

!$omp end parallel

    print *, " *** pass *** "

  end program main
