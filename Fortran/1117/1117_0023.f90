program main
  integer a
  integer num_threads
  integer OMP_GET_NUM_THREADS

  a = 0

!$omp parallel reduction(+:a)
  num_threads = OMP_GET_NUM_THREADS()
  do i=1, 128
     a = a+1
  end do
!$omp end parallel

  if(a .ne. (128*num_threads)) then
     write(*,*) "REDUCTION clause is not active"
  else
     write(*,*) "ok"
  end if

end
