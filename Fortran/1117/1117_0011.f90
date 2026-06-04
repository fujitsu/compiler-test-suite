program main
  integer a, b, c, num_threads, total
  integer OMP_GET_NUM_THREADS
  integer OMP_GET_THREAD_NUM
  common /cmnblk1/a
  common /cmnblk2/b
!$omp threadprivate(/cmnblk1/, /cmnblk2/)

  a = 0
  c = 0
!$omp parallel copyin(/cmnblk1/), shared(c)
  b = OMP_GET_THREAD_NUM()
  num_threads = OMP_GET_NUM_THREADS()
  call sub1()
!$omp atomic
  c = c+a
!$omp end parallel
  total = 0
  do j=0, num_threads-1
    do i=1, 10
      total = total+j
    end do
  end do

  if(total .ne. c) then
     print *, 'NG', total, c
  else
     print *, 'ok'
  end if
end program main

subroutine sub1()
  integer a, b
  common /cmnblk1/a
  common /cmnblk2/b
!$omp threadprivate(/cmnblk1/, /cmnblk2/)

  do i=1, 10
     a = a+b
  end do
end subroutine sub1
