program main
  integer a(1024), alpha, b(1024), err
  integer OMP_GET_THREAD_NUM

!$omp parallel do lastprivate(a, alpha)
  do i=1, 1024
    a(i) = i
    b(i) = OMP_GET_THREAD_NUM()
    alpha = OMP_GET_THREAD_NUM()
  end do
!$omp end parallel do

  err = 0
  do i=1, 1024
     if((b(i) .eq. alpha) .and. (a(i) .ne. i)) then
        err = 1
        exit
     end if
  end do

  if(err .ne. 0) then
     write(*,*) "LASTPRIVATE is not active"
  else
     write(*,*) "ok"
  end if

end program main
