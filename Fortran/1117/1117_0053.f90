program main
integer flag, a(5), b(5), at, bt
integer OMP_GET_THREAD_NUM

flag = 1

!$omp parallel sections if(flag .eq. 1)
    a(1) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    a(2) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    a(3) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    a(4) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    a(5) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp end parallel sections

!$omp parallel sections if(flag .ne. 1)
    b(1) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    b(2) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    b(3) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    b(4) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
!$omp section
    b(5) = OMP_GET_THREAD_NUM()
    do i=1, 10000
      j = omp_get_thread_num()
    end do
    j = j+1
!$omp end parallel sections

at = 0
bt = 0
do i=1, 5
  at = at+a(i)
  bt = bt+b(i)
end do

if((flag .eq. 1) .and. (bt .eq. 0)) then
   write(*,*) "ok"
else if((flag .ne. 1) .and. (at .eq. 0)) then
   write(*,*) "ok"
else
   write(*,*) "IF is not active"
end if

end
