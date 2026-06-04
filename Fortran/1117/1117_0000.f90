program main
  integer a(1024), num_threads
  integer OMP_GET_THREAD_NUM
  integer OMP_GET_NUM_THREADS
  integer cmp

!$omp parallel do
  do i=1, 1024
     a(i) = OMP_GET_THREAD_NUM()
     num_threads = OMP_GET_NUM_THREADS()
  end do
!$omp end parallel do

  if(cmp(a, num_threads) .gt. 1) then
     write(*,*) "ok"
  else if(cmp(a, num_threads) .eq. 1) then
     if (num_threads .eq. 1)then
        write(*,*) "ok"
     else
        write(*,*) "Only one threads is active"
     end if
  else
     write(*,*) "PARALLEL DO directive is not active"
  end if

end program main

integer function cmp(a, num_threads)
  integer a(1024)
  integer b(num_threads)

  b = 0
  cmp = 0
  do i=1, 1024
     if(a(i) .gt. num_threads) then
        return
     end if

     b(a(i)+1) = b(a(i)+1)+1
  end do

  do i=1, num_threads
     if(b(i) .gt. 0) cmp = cmp+1
  end do

  return
end function cmp
