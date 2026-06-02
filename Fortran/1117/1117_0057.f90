program main
  integer a, b, c, err_cnt, num_threads
  integer OMP_GET_NUM_THREADS

  err_cnt = 0
  a = 0
  b = 0
  c = 0

!$omp parallel
  num_threads = OMP_GET_NUM_THREADS()
  do i=1, 50000000
    if(mod(i,2) .eq. 0) then
      b = b+1
      c = c-1
    else
      b = b-1
      c = c+1
    end if
  end do
!$omp atomic
  a = a+1
!$omp barrier
  if(a .ne. num_threads) then
    err_cnt = 1
  end if
!$omp end parallel

if(err_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "BARRIER is not active"
end if
a = b+c

end
