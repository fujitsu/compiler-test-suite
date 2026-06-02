program main
  integer flag, a_flag, b_flag, c_flag, buf
  integer OMP_GET_THREAD_NUM, OMP_GET_NUM_THREADS

  flag = 5
  buf = 0

  a_flag = 0
  b_flag = 0
  c_flag = 0

!$omp parallel do if(flag .gt. 0)
  do i=1, 512
     if(((i .ge. 2) .and. (buf .ne. OMP_GET_THREAD_NUM())) .or. &
        (flag .gt. 0 ) .and. (OMP_GET_NUM_THREADS() == 1) ) then
        a_flag = 1
     end if
     buf = OMP_GET_THREAD_NUM()
  end do
!$omp end parallel do

!$omp parallel do if(flag .lt. 0)
  do i=1, 512
     if(((i .ge. 2) .and. (buf .ne. OMP_GET_THREAD_NUM())) .or. &
        ((flag .lt. 0) .and. (OMP_GET_NUM_THREADS() == 1)) ) then
        b_flag = 1
     end if
     buf = OMP_GET_THREAD_NUM()
  end do
!$omp end parallel do

!$omp parallel do if(flag .eq. 0)
  do i=1, 512
     if(((i .ge. 2) .and. (buf .ne. OMP_GET_THREAD_NUM())) .or. &
        ((flag .eq. 0) .and. (OMP_GET_NUM_THREADS() == 1)) ) then
        c_flag = 1
     end if
     buf = OMP_GET_THREAD_NUM()
  end do
!$omp end parallel do

  if(((flag .gt. 0) .and. (a_flag .eq. 1) .and. &
       (b_flag .eq. 0) .and. (c_flag .eq. 0)) .or. &
       ((flag .lt. 0) .and. (a_flag .eq. 0) .and. &
       (b_flag .eq. 1) .and. (c_flag .eq. 0)) .or. &
       ((flag .eq. 0) .and. (a_flag .eq. 0) .and. &
       (b_flag .eq. 0) .and. (c_flag .eq. 1))) then
     write(*,*) "ok"
  else
     write(*,*) "IF clause is not active"
  end if

end program main
